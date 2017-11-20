.class public final Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;


# instance fields
.field private action_:Ljava/lang/String;

.field private bitField0_:I

.field private data_:Ljava/lang/String;

.field private hardwareVersion_:Ljava/lang/String;

.field private locale_:Ljava/lang/String;

.field private manufacturingBuild_:Ljava/lang/String;

.field private region_:Ljava/lang/String;

.field private sessionId_:Ljava/lang/String;

.field private softwareVersion_:Ljava/lang/String;

.field private timestamp_:J

.field public userEventProto:[Lcom/google/common/a/d;

.field private userEventSource_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 236
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    .line 277
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    .line 299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    .line 321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    .line 362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    .line 406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    .line 428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    .line 450
    sget-object v0, Lcom/google/common/a/d;->a:[Lcom/google/common/a/d;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    .line 225
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 699
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 693
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    return-object v0
.end method


# virtual methods
.method public final clearAction()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 271
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    .line 272
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 273
    return-object p0
.end method

.method public final clearData()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    .line 294
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 295
    return-object p0
.end method

.method public final clearHardwareVersion()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    .line 379
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 380
    return-object p0
.end method

.method public final clearLocale()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 422
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    .line 423
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 424
    return-object p0
.end method

.method public final clearManufacturingBuild()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    .line 401
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 402
    return-object p0
.end method

.method public final clearRegion()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 444
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    .line 445
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 446
    return-object p0
.end method

.method public final clearSessionId()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 315
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    .line 316
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 317
    return-object p0
.end method

.method public final clearSoftwareVersion()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 356
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    .line 357
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 358
    return-object p0
.end method

.method public final clearTimestamp()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 2

    .prologue
    .line 334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    .line 335
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 336
    return-object p0
.end method

.method public final clearUserEventSource()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    .line 250
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 251
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    if-ne p1, p0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 455
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 456
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .line 457
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 458
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 459
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 460
    :goto_3
    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    iget-wide v4, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 462
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 463
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 464
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 465
    :goto_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 466
    :goto_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    .line 467
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 468
    goto :goto_0

    .line 457
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    .line 458
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    .line 462
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_8

    .line 467
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    .line 468
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public final getHardwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public final getManufacturingBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 538
    .line 539
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    .line 540
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    .line 541
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 543
    :goto_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 544
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    .line 545
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 547
    :cond_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 548
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    .line 549
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 551
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 552
    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    .line 553
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 555
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    .line 556
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    .line 557
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 559
    :cond_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_4

    .line 560
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    .line 561
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 563
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    if-eqz v2, :cond_6

    .line 564
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_6

    aget-object v4, v2, v1

    .line 565
    if-eqz v4, :cond_5

    .line 566
    const/4 v5, 0x7

    .line 567
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    .line 564
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 572
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    .line 573
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 576
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    .line 577
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 579
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    .line 580
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    .line 581
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    :cond_9
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    .line 584
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    .line 585
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    :cond_a
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 588
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->cachedSize:I

    .line 589
    return v0

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public final getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    return-wide v0
.end method

.method public final getUserEventSource()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    return v0
.end method

.method public final hasAction()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasData()Z
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasHardwareVersion()Z
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLocale()Z
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasManufacturingBuild()Z
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRegion()Z
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSessionId()Z
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSoftwareVersion()Z
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTimestamp()Z
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasUserEventSource()Z
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 472
    .line 473
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    add-int/lit16 v0, v0, 0x20f

    .line 474
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 475
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 476
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 477
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 478
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 479
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 480
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 481
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 482
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 483
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    if-nez v2, :cond_9

    mul-int/lit8 v2, v0, 0x1f

    .line 489
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_b

    :goto_8
    add-int/2addr v0, v1

    .line 490
    return v0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 479
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 480
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 481
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 482
    :cond_8
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_9
    move v2, v0

    move v0, v1

    .line 485
    :goto_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 486
    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    aget-object v2, v2, v0

    if-nez v2, :cond_a

    move v2, v1

    :goto_a
    add-int/2addr v2, v3

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 486
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/common/a/d;->hashCode()I

    move-result v2

    goto :goto_a

    .line 489
    :cond_b
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_8
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 597
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 598
    sparse-switch v0, :sswitch_data_0

    .line 602
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 603
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    .line 606
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    :sswitch_0
    return-object p0

    .line 613
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    .line 614
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 618
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    .line 619
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 623
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    .line 624
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 628
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    .line 629
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 633
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    .line 634
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 638
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    .line 639
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 643
    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 644
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    if-nez v0, :cond_3

    move v0, v1

    .line 645
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/a/d;

    .line 646
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    if-eqz v3, :cond_2

    .line 647
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    .line 650
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    .line 651
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    new-instance v3, Lcom/google/common/a/d;

    invoke-direct {v3}, Lcom/google/common/a/d;-><init>()V

    aput-object v3, v2, v0

    .line 652
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 653
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    array-length v0, v0

    goto :goto_1

    .line 656
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    new-instance v3, Lcom/google/common/a/d;

    invoke-direct {v3}, Lcom/google/common/a/d;-><init>()V

    aput-object v3, v2, v0

    .line 657
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 661
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 662
    if-eq v0, v4, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 665
    :cond_5
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    .line 666
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto/16 :goto_0

    .line 668
    :cond_6
    iput v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    goto/16 :goto_0

    .line 673
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    .line 674
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto/16 :goto_0

    .line 678
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    .line 679
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto/16 :goto_0

    .line 683
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    .line 684
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto/16 :goto_0

    .line 598
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 263
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    .line 264
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 265
    return-object p0
.end method

.method public final setData(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 285
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    .line 286
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 287
    return-object p0
.end method

.method public final setHardwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 370
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    .line 371
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 372
    return-object p0
.end method

.method public final setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 414
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    .line 415
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 416
    return-object p0
.end method

.method public final setManufacturingBuild(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 392
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    .line 393
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 394
    return-object p0
.end method

.method public final setRegion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 436
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    .line 437
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 438
    return-object p0
.end method

.method public final setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    .line 308
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 309
    return-object p0
.end method

.method public final setSoftwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    .line 349
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 350
    return-object p0
.end method

.method public final setTimestamp(J)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 326
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    .line 327
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 328
    return-object p0
.end method

.method public final setUserEventSource(I)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 241
    iput p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    .line 242
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 243
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    .prologue
    .line 495
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 498
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 499
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 501
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 502
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 504
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 505
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 507
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 508
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 510
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 511
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 513
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    if-eqz v0, :cond_7

    .line 514
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/a/d;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_7

    aget-object v3, v1, v0

    .line 515
    if-eqz v3, :cond_6

    .line 516
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 514
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_7
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 521
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 523
    :cond_8
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 524
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->manufacturingBuild_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 526
    :cond_9
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 527
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 529
    :cond_a
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 530
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->region_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 532
    :cond_b
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 534
    return-void
.end method
