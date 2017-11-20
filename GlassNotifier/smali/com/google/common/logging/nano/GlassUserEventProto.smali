.class public final Lcom/google/common/logging/nano/GlassUserEventProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlassUserEventProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/GlassUserEventProto$ExperimentId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/GlassUserEventProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/GlassUserEventProto;


# instance fields
.field public avrcp:Lcom/google/common/logging/nano/Avrcp;

.field private bitField0_:I

.field private bootCount_:I

.field public companion:Lcom/google/common/logging/nano/Companion;

.field private eventData_:Ljava/lang/String;

.field private eventSerial_:J

.field private eventSoftwareVersion_:Ljava/lang/String;

.field private eventTimeMs_:J

.field private eventType_:Ljava/lang/String;

.field public experimentId:[I

.field public framework:Lcom/google/common/logging/nano/Framework;

.field public gallery:Lcom/google/common/logging/nano/Gallery;

.field public glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

.field public hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

.field private isDogfood_:Z

.field public maps:Lcom/google/common/logging/nano/Maps;

.field public messaging:Lcom/google/common/logging/nano/Messaging;

.field public music:Lcom/google/common/logging/nano/Music;

.field public nowtown:Lcom/google/common/logging/nano/NowTown;

.field private oneof_feature_data_:I

.field public performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

.field public setup:Lcom/google/common/logging/nano/Setup;

.field private timezone_:Ljava/lang/String;

.field public tts:Lcom/google/common/logging/nano/Tts;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->oneof_feature_data_:I

    .line 242
    invoke-virtual {p0}, Lcom/google/common/logging/nano/GlassUserEventProto;->clear()Lcom/google/common/logging/nano/GlassUserEventProto;

    .line 243
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/common/logging/nano/GlassUserEventProto;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventProto;

    if-nez v0, :cond_1

    .line 21
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/GlassUserEventProto;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventProto;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/GlassUserEventProto;

    sput-object v0, Lcom/google/common/logging/nano/GlassUserEventProto;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventProto;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/GlassUserEventProto;->_emptyArray:[Lcom/google/common/logging/nano/GlassUserEventProto;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 900
    new-instance v0, Lcom/google/common/logging/nano/GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlassUserEventProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/GlassUserEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 894
    new-instance v0, Lcom/google/common/logging/nano/GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlassUserEventProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/GlassUserEventProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 246
    iput v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 247
    iput-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    .line 248
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 249
    iput-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 252
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 254
    iput-boolean v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->isDogfood_:Z

    .line 255
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    .line 256
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    .line 257
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    .line 258
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    .line 259
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    .line 260
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    .line 261
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    .line 262
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    .line 263
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    .line 264
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    .line 265
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    .line 266
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    .line 267
    iput v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bootCount_:I

    .line 268
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    .line 269
    iput-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->cachedSize:I

    .line 271
    return-object p0
.end method

.method public clearBootCount()Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bootCount_:I

    .line 227
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 228
    return-object p0
.end method

.method public clearEventData()Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1

    .prologue
    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 125
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 126
    return-object p0
.end method

.method public clearEventSerial()Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 2

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    .line 84
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 85
    return-object p0
.end method

.method public clearEventSoftwareVersion()Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1

    .prologue
    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 150
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 151
    return-object p0
.end method

.method public clearEventTimeMs()Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    .line 43
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public clearEventType()Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1

    .prologue
    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 103
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 104
    return-object p0
.end method

.method public clearIsDogfood()Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->isDogfood_:Z

    .line 172
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 173
    return-object p0
.end method

.method public clearTimezone()Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1

    .prologue
    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 62
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 63
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    .line 564
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 565
    .local v3, "size":I
    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 566
    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    .line 567
    invoke-static {v4, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 569
    :cond_0
    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 570
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 571
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 573
    :cond_1
    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 574
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 575
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 577
    :cond_2
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    if-eqz v4, :cond_3

    .line 578
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    .line 579
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 581
    :cond_3
    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    .line 582
    const/4 v4, 0x5

    iget-wide v6, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    .line 583
    invoke-static {v4, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 585
    :cond_4
    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_5

    .line 586
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 587
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 589
    :cond_5
    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 590
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 591
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 593
    :cond_6
    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_7

    .line 594
    const/16 v4, 0x8

    iget-boolean v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->isDogfood_:Z

    .line 595
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 597
    :cond_7
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    if-eqz v4, :cond_8

    .line 598
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    .line 599
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 601
    :cond_8
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    if-eqz v4, :cond_9

    .line 602
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    .line 603
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 605
    :cond_9
    iget v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_a

    .line 606
    const/16 v4, 0xb

    iget v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bootCount_:I

    .line 607
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 609
    :cond_a
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    array-length v4, v4

    if-lez v4, :cond_c

    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    array-length v4, v4

    if-ge v2, v4, :cond_b

    .line 612
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    aget v1, v4, v2

    .line 614
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 611
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    .end local v1    # "element":I
    :cond_b
    add-int/2addr v3, v0

    .line 617
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 619
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_c
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    if-eqz v4, :cond_d

    .line 620
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    .line 621
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 623
    :cond_d
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    if-eqz v4, :cond_e

    .line 624
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    .line 625
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 627
    :cond_e
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    if-eqz v4, :cond_f

    .line 628
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    .line 629
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 631
    :cond_f
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    if-eqz v4, :cond_10

    .line 632
    const/16 v4, 0x10

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    .line 633
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 635
    :cond_10
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    if-eqz v4, :cond_11

    .line 636
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    .line 637
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 639
    :cond_11
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    if-eqz v4, :cond_12

    .line 640
    const/16 v4, 0x12

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    .line 641
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 643
    :cond_12
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    if-eqz v4, :cond_13

    .line 644
    const/16 v4, 0x13

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    .line 645
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 647
    :cond_13
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    if-eqz v4, :cond_14

    .line 648
    const/16 v4, 0x14

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    .line 649
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 651
    :cond_14
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    if-eqz v4, :cond_15

    .line 652
    const/16 v4, 0x15

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    .line 653
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 655
    :cond_15
    iget-object v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    if-eqz v4, :cond_16

    .line 656
    const/16 v4, 0x16

    iget-object v5, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    .line 657
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 659
    :cond_16
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 276
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 439
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/GlassUserEventProto;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 282
    check-cast v0, Lcom/google/common/logging/nano/GlassUserEventProto;

    .line 283
    .local v0, "other":Lcom/google/common/logging/nano/GlassUserEventProto;
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 287
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->timezone_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 288
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 295
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 296
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventData_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    if-nez v3, :cond_11

    .line 304
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    if-nez v3, :cond_0

    .line 312
    :cond_2
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->isDogfood_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->isDogfood_:Z

    if-ne v3, v4, :cond_0

    .line 320
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    if-nez v3, :cond_12

    .line 321
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    if-nez v3, :cond_0

    .line 329
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    if-nez v3, :cond_13

    .line 330
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    if-nez v3, :cond_0

    .line 338
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    if-nez v3, :cond_14

    .line 339
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    if-nez v3, :cond_0

    .line 347
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    if-nez v3, :cond_15

    .line 348
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    if-nez v3, :cond_0

    .line 356
    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    if-nez v3, :cond_16

    .line 357
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    if-nez v3, :cond_0

    .line 365
    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    if-nez v3, :cond_17

    .line 366
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    if-nez v3, :cond_0

    .line 374
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    if-nez v3, :cond_18

    .line 375
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    if-nez v3, :cond_0

    .line 383
    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    if-nez v3, :cond_19

    .line 384
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    if-nez v3, :cond_0

    .line 392
    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    if-nez v3, :cond_1a

    .line 393
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    if-nez v3, :cond_0

    .line 401
    :cond_b
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    if-nez v3, :cond_1b

    .line 402
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    if-nez v3, :cond_0

    .line 410
    :cond_c
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    if-nez v3, :cond_1c

    .line 411
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    if-nez v3, :cond_0

    .line 419
    :cond_d
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    if-nez v3, :cond_1d

    .line 420
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    if-nez v3, :cond_0

    .line 428
    :cond_e
    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bootCount_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bootCount_:I

    if-ne v3, v4, :cond_0

    .line 432
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 437
    :cond_f
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_10
    move v1, v2

    goto/16 :goto_0

    .line 308
    :cond_11
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 325
    :cond_12
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Avrcp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 334
    :cond_13
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Companion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    .line 343
    :cond_14
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Framework;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    .line 352
    :cond_15
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Gallery;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    .line 361
    :cond_16
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/GlasswareUsage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    .line 370
    :cond_17
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/HotwordCompilation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    .line 379
    :cond_18
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Messaging;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    .line 388
    :cond_19
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Music;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    .line 397
    :cond_1a
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/NowTown;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    .line 406
    :cond_1b
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Setup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    .line 415
    :cond_1c
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Tts;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    .line 424
    :cond_1d
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/nano/Maps;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    .line 439
    :cond_1e
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getBootCount()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bootCount_:I

    return v0
.end method

.method public getEventData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventData_:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSerial()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    return-wide v0
.end method

.method public getEventSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimeMs()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    return-wide v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventType_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDogfood()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->isDogfood_:Z

    return v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->timezone_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBootCount()Z
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventData()Z
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventSerial()Z
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventSoftwareVersion()Z
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventTimeMs()Z
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsDogfood()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimezone()Z
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 444
    const/16 v0, 0x11

    .line 445
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 446
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    iget-wide v6, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 447
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->timezone_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 448
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    iget-wide v6, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 449
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventType_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 450
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventData_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 451
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    if-nez v1, :cond_1

    move v1, v2

    .line 452
    :goto_0
    add-int v0, v3, v1

    .line 453
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 454
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->isDogfood_:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v3, v1

    .line 455
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    if-nez v1, :cond_3

    move v1, v2

    .line 456
    :goto_2
    add-int v0, v3, v1

    .line 457
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    if-nez v1, :cond_4

    move v1, v2

    .line 458
    :goto_3
    add-int v0, v3, v1

    .line 459
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    if-nez v1, :cond_5

    move v1, v2

    .line 460
    :goto_4
    add-int v0, v3, v1

    .line 461
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    if-nez v1, :cond_6

    move v1, v2

    .line 462
    :goto_5
    add-int v0, v3, v1

    .line 463
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    if-nez v1, :cond_7

    move v1, v2

    .line 464
    :goto_6
    add-int v0, v3, v1

    .line 465
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    if-nez v1, :cond_8

    move v1, v2

    .line 466
    :goto_7
    add-int v0, v3, v1

    .line 467
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    if-nez v1, :cond_9

    move v1, v2

    .line 468
    :goto_8
    add-int v0, v3, v1

    .line 469
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    if-nez v1, :cond_a

    move v1, v2

    .line 470
    :goto_9
    add-int v0, v3, v1

    .line 471
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    if-nez v1, :cond_b

    move v1, v2

    .line 472
    :goto_a
    add-int v0, v3, v1

    .line 473
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    if-nez v1, :cond_c

    move v1, v2

    .line 474
    :goto_b
    add-int v0, v3, v1

    .line 475
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    if-nez v1, :cond_d

    move v1, v2

    .line 476
    :goto_c
    add-int v0, v3, v1

    .line 477
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    if-nez v1, :cond_e

    move v1, v2

    .line 478
    :goto_d
    add-int v0, v3, v1

    .line 479
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bootCount_:I

    add-int v0, v1, v3

    .line 480
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    .line 481
    invoke-static {v3}, Lcom/google/protobuf/nano/InternalNano;->hashCode([I)I

    move-result v3

    add-int v0, v1, v3

    .line 482
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 483
    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 484
    :cond_0
    :goto_e
    add-int v0, v1, v2

    .line 485
    return v0

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;->hashCode()I

    move-result v1

    goto/16 :goto_0

    .line 454
    :cond_2
    const/16 v1, 0x4d5

    goto/16 :goto_1

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Avrcp;->hashCode()I

    move-result v1

    goto/16 :goto_2

    .line 458
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Companion;->hashCode()I

    move-result v1

    goto/16 :goto_3

    .line 460
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Framework;->hashCode()I

    move-result v1

    goto/16 :goto_4

    .line 462
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Gallery;->hashCode()I

    move-result v1

    goto/16 :goto_5

    .line 464
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/GlasswareUsage;->hashCode()I

    move-result v1

    goto/16 :goto_6

    .line 466
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/HotwordCompilation;->hashCode()I

    move-result v1

    goto/16 :goto_7

    .line 468
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Messaging;->hashCode()I

    move-result v1

    goto/16 :goto_8

    .line 470
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Music;->hashCode()I

    move-result v1

    goto/16 :goto_9

    .line 472
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/NowTown;->hashCode()I

    move-result v1

    goto/16 :goto_a

    .line 474
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Setup;->hashCode()I

    move-result v1

    goto/16 :goto_b

    .line 476
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Tts;->hashCode()I

    move-result v1

    goto/16 :goto_c

    .line 478
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Maps;->hashCode()I

    move-result v1

    goto/16 :goto_d

    .line 484
    :cond_f
    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v2

    goto :goto_e
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 21
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v15

    .line 668
    .local v15, "tag":I
    sparse-switch v15, :sswitch_data_0

    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v15}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 673
    :sswitch_0
    return-object p0

    .line 678
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    .line 679
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    goto :goto_0

    .line 683
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    goto :goto_0

    .line 688
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    goto :goto_0

    .line 693
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 694
    new-instance v18, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    .line 696
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 700
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    .line 701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    goto/16 :goto_0

    .line 705
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 706
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x20

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    goto/16 :goto_0

    .line 710
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 711
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    goto/16 :goto_0

    .line 715
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->isDogfood_:Z

    .line 716
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x40

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    goto/16 :goto_0

    .line 720
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 721
    new-instance v18, Lcom/google/common/logging/nano/Music;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/Music;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    .line 723
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 727
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 728
    new-instance v18, Lcom/google/common/logging/nano/GlasswareUsage;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/GlasswareUsage;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    .line 730
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 734
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->bootCount_:I

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    goto/16 :goto_0

    .line 739
    :sswitch_c
    const/16 v18, 0x60

    .line 740
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v11

    .line 741
    .local v11, "length":I
    new-array v0, v11, [I

    move-object/from16 v17, v0

    .line 742
    .local v17, "values":[I
    const/4 v6, 0x0

    .line 743
    .local v6, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v7, v6

    .end local v6    # "count":I
    .local v7, "count":I
    :goto_1
    if-ge v8, v11, :cond_5

    .line 744
    if-eqz v8, :cond_4

    .line 745
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 747
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 748
    .local v10, "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 749
    .local v16, "value":I
    packed-switch v16, :pswitch_data_0

    .line 756
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 757
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/google/common/logging/nano/GlassUserEventProto;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move v6, v7

    .line 743
    .end local v7    # "count":I
    .restart local v6    # "count":I
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "count":I
    .restart local v7    # "count":I
    goto :goto_1

    .line 753
    :pswitch_0
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "count":I
    .restart local v6    # "count":I
    aput v16, v17, v7

    goto :goto_2

    .line 761
    .end local v6    # "count":I
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    .restart local v7    # "count":I
    :cond_5
    if-eqz v7, :cond_0

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    const/4 v8, 0x0

    .line 763
    :goto_3
    if-nez v8, :cond_7

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_7

    .line 764
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    goto/16 :goto_0

    .line 762
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_3

    .line 766
    :cond_7
    add-int v18, v8, v7

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 767
    .local v13, "newArray":[I
    if-eqz v8, :cond_8

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    :cond_8
    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v13, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    goto/16 :goto_0

    .line 777
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v11    # "length":I
    .end local v13    # "newArray":[I
    .end local v17    # "values":[I
    :sswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v5

    .line 778
    .local v5, "bytes":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v12

    .line 780
    .local v12, "limit":I
    const/4 v4, 0x0

    .line 781
    .local v4, "arrayLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v14

    .line 782
    .local v14, "startPos":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v18

    if-lez v18, :cond_9

    .line 783
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v18

    packed-switch v18, :pswitch_data_1

    goto :goto_4

    .line 787
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 791
    :cond_9
    if-eqz v4, :cond_d

    .line 792
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    const/4 v8, 0x0

    .line 794
    .restart local v8    # "i":I
    :goto_5
    add-int v18, v8, v4

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 795
    .restart local v13    # "newArray":[I
    if-eqz v8, :cond_a

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 798
    :cond_a
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v18

    if-lez v18, :cond_c

    .line 799
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v10

    .line 800
    .restart local v10    # "initialPos":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v16

    .line 801
    .restart local v16    # "value":I
    packed-switch v16, :pswitch_data_2

    .line 808
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 809
    const/16 v18, 0x60

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/logging/nano/GlassUserEventProto;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_6

    .line 793
    .end local v8    # "i":I
    .end local v10    # "initialPos":I
    .end local v13    # "newArray":[I
    .end local v16    # "value":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v8, v0

    goto :goto_5

    .line 805
    .restart local v8    # "i":I
    .restart local v10    # "initialPos":I
    .restart local v13    # "newArray":[I
    .restart local v16    # "value":I
    :pswitch_2
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    aput v16, v13, v8

    move v8, v9

    .line 806
    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_6

    .line 813
    .end local v10    # "initialPos":I
    .end local v16    # "value":I
    :cond_c
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    .line 815
    .end local v8    # "i":I
    .end local v13    # "newArray":[I
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 819
    .end local v4    # "arrayLength":I
    .end local v5    # "bytes":I
    .end local v12    # "limit":I
    .end local v14    # "startPos":I
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    .line 820
    new-instance v18, Lcom/google/common/logging/nano/Tts;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/Tts;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    .line 822
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 826
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    .line 827
    new-instance v18, Lcom/google/common/logging/nano/HotwordCompilation;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/HotwordCompilation;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    .line 829
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 833
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    move-object/from16 v18, v0

    if-nez v18, :cond_10

    .line 834
    new-instance v18, Lcom/google/common/logging/nano/Companion;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/Companion;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    .line 836
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 840
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    .line 841
    new-instance v18, Lcom/google/common/logging/nano/NowTown;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/NowTown;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    .line 843
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 847
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    move-object/from16 v18, v0

    if-nez v18, :cond_12

    .line 848
    new-instance v18, Lcom/google/common/logging/nano/Gallery;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/Gallery;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    .line 850
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 854
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    move-object/from16 v18, v0

    if-nez v18, :cond_13

    .line 855
    new-instance v18, Lcom/google/common/logging/nano/Framework;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/Framework;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    .line 857
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 861
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    move-object/from16 v18, v0

    if-nez v18, :cond_14

    .line 862
    new-instance v18, Lcom/google/common/logging/nano/Avrcp;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/Avrcp;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    .line 864
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 868
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    move-object/from16 v18, v0

    if-nez v18, :cond_15

    .line 869
    new-instance v18, Lcom/google/common/logging/nano/Messaging;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/Messaging;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    .line 871
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 875
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    move-object/from16 v18, v0

    if-nez v18, :cond_16

    .line 876
    new-instance v18, Lcom/google/common/logging/nano/Maps;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/Maps;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    .line 878
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 882
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    move-object/from16 v18, v0

    if-nez v18, :cond_17

    .line 883
    new-instance v18, Lcom/google/common/logging/nano/Setup;

    invoke-direct/range {v18 .. v18}, Lcom/google/common/logging/nano/Setup;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    .line 885
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 668
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x62 -> :sswitch_d
        0x6a -> :sswitch_e
        0x72 -> :sswitch_f
        0x7a -> :sswitch_10
        0x82 -> :sswitch_11
        0x8a -> :sswitch_12
        0x92 -> :sswitch_13
        0x9a -> :sswitch_14
        0xa2 -> :sswitch_15
        0xaa -> :sswitch_16
        0xb2 -> :sswitch_17
    .end sparse-switch

    .line 749
    :pswitch_data_0
    .packed-switch 0x84c0a9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 783
    :pswitch_data_1
    .packed-switch 0x84c0a9
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 801
    :pswitch_data_2
    .packed-switch 0x84c0a9
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/GlassUserEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public setBootCount(I)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 231
    iput p1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bootCount_:I

    .line 232
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 233
    return-object p0
.end method

.method public setEventData(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventData_:Ljava/lang/String;

    .line 133
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 134
    return-object p0
.end method

.method public setEventSerial(J)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    .line 89
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 90
    return-object p0
.end method

.method public setEventSoftwareVersion(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    .line 158
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 159
    return-object p0
.end method

.method public setEventTimeMs(J)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    .line 48
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 49
    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventType_:Ljava/lang/String;

    .line 111
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 112
    return-object p0
.end method

.method public setIsDogfood(Z)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->isDogfood_:Z

    .line 177
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 178
    return-object p0
.end method

.method public setTimezone(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassUserEventProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->timezone_:Ljava/lang/String;

    .line 70
    iget v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    .line 71
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    iget v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 492
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventTimeMs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 494
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 495
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventType_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 497
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 498
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventData_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 500
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    if-eqz v1, :cond_3

    .line 501
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->performanceStats:Lcom/google/common/logging/nano/GlassUserEventPerformanceStats;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 503
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 504
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSerial_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 506
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 507
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->eventSoftwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 509
    :cond_5
    iget v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 510
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->timezone_:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 512
    :cond_6
    iget v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 513
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->isDogfood_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 515
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    if-eqz v1, :cond_8

    .line 516
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->music:Lcom/google/common/logging/nano/Music;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 518
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    if-eqz v1, :cond_9

    .line 519
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->glasswareUsage:Lcom/google/common/logging/nano/GlasswareUsage;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 521
    :cond_9
    iget v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_a

    .line 522
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->bootCount_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 524
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    array-length v1, v1

    if-lez v1, :cond_b

    .line 525
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_b

    .line 526
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->experimentId:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    .end local v0    # "i":I
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    if-eqz v1, :cond_c

    .line 530
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->tts:Lcom/google/common/logging/nano/Tts;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 532
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    if-eqz v1, :cond_d

    .line 533
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->hotwordCompilation:Lcom/google/common/logging/nano/HotwordCompilation;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 535
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    if-eqz v1, :cond_e

    .line 536
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->companion:Lcom/google/common/logging/nano/Companion;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 538
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    if-eqz v1, :cond_f

    .line 539
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->nowtown:Lcom/google/common/logging/nano/NowTown;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 541
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    if-eqz v1, :cond_10

    .line 542
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->gallery:Lcom/google/common/logging/nano/Gallery;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 544
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    if-eqz v1, :cond_11

    .line 545
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->framework:Lcom/google/common/logging/nano/Framework;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 547
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    if-eqz v1, :cond_12

    .line 548
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->avrcp:Lcom/google/common/logging/nano/Avrcp;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 550
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    if-eqz v1, :cond_13

    .line 551
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->messaging:Lcom/google/common/logging/nano/Messaging;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 553
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    if-eqz v1, :cond_14

    .line 554
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->maps:Lcom/google/common/logging/nano/Maps;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 556
    :cond_14
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    if-eqz v1, :cond_15

    .line 557
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassUserEventProto;->setup:Lcom/google/common/logging/nano/Setup;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 559
    :cond_15
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 560
    return-void
.end method
