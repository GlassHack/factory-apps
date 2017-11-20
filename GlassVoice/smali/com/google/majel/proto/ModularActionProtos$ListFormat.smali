.class public final Lcom/google/majel/proto/ModularActionProtos$ListFormat;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListFormat"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ListFormat;


# instance fields
.field private bitField0_:I

.field private endFormat_:Ljava/lang/String;

.field public listItemStringValue:[Ljava/lang/String;

.field private middleFormat_:Ljava/lang/String;

.field private startFormat_:Ljava/lang/String;

.field private twoItemFormat_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3550
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3551
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->clear()Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    .line 3552
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 2

    .prologue
    .line 3446
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    if-nez v0, :cond_1

    .line 3447
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3449
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    if-nez v0, :cond_0

    .line 3450
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    .line 3452
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3454
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    return-object v0

    .line 3452
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3691
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ListFormat;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3685
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ListFormat;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1

    .prologue
    .line 3555
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    .line 3556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->twoItemFormat_:Ljava/lang/String;

    .line 3557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->startFormat_:Ljava/lang/String;

    .line 3558
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->middleFormat_:Ljava/lang/String;

    .line 3559
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->endFormat_:Ljava/lang/String;

    .line 3560
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    .line 3561
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->cachedSize:I

    .line 3562
    return-object p0
.end method

.method public clearEndFormat()Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1

    .prologue
    .line 3542
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->endFormat_:Ljava/lang/String;

    .line 3543
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    .line 3544
    return-object p0
.end method

.method public clearMiddleFormat()Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1

    .prologue
    .line 3520
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->middleFormat_:Ljava/lang/String;

    .line 3521
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    .line 3522
    return-object p0
.end method

.method public clearStartFormat()Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1

    .prologue
    .line 3498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->startFormat_:Ljava/lang/String;

    .line 3499
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    .line 3500
    return-object p0
.end method

.method public clearTwoItemFormat()Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1

    .prologue
    .line 3476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->twoItemFormat_:Ljava/lang/String;

    .line 3477
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    .line 3478
    return-object p0
.end method

.method public getEndFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3528
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->endFormat_:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->middleFormat_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 3592
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 3593
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 3594
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->twoItemFormat_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3597
    :cond_0
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 3598
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->startFormat_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3601
    :cond_1
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 3602
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->middleFormat_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3605
    :cond_2
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 3606
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->endFormat_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 3609
    :cond_3
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_6

    .line 3610
    const/4 v0, 0x0

    .line 3611
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 3612
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 3613
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 3614
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 3615
    add-int/lit8 v0, v0, 0x1

    .line 3616
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 3612
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3620
    .end local v2    # "element":Ljava/lang/String;
    :cond_5
    add-int/2addr v4, v1

    .line 3621
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 3623
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_6
    iput v4, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->cachedSize:I

    .line 3624
    return v4
.end method

.method public getStartFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->startFormat_:Ljava/lang/String;

    return-object v0
.end method

.method public getTwoItemFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3462
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->twoItemFormat_:Ljava/lang/String;

    return-object v0
.end method

.method public hasEndFormat()Z
    .locals 1

    .prologue
    .line 3539
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMiddleFormat()Z
    .locals 1

    .prologue
    .line 3517
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartFormat()Z
    .locals 1

    .prologue
    .line 3495
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTwoItemFormat()Z
    .locals 1

    .prologue
    .line 3473
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

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
    .line 3440
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ListFormat;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3632
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3633
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3637
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3638
    :sswitch_0
    return-object p0

    .line 3643
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->twoItemFormat_:Ljava/lang/String;

    .line 3644
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    goto :goto_0

    .line 3648
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->startFormat_:Ljava/lang/String;

    .line 3649
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    goto :goto_0

    .line 3653
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->middleFormat_:Ljava/lang/String;

    .line 3654
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    goto :goto_0

    .line 3658
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->endFormat_:Ljava/lang/String;

    .line 3659
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    goto :goto_0

    .line 3663
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3665
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 3666
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 3667
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3668
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3670
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3671
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3672
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3670
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3665
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 3675
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 3676
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    goto :goto_0

    .line 3633
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setEndFormat(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3531
    if-nez p1, :cond_0

    .line 3532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3534
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->endFormat_:Ljava/lang/String;

    .line 3535
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    .line 3536
    return-object p0
.end method

.method public setMiddleFormat(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3509
    if-nez p1, :cond_0

    .line 3510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3512
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->middleFormat_:Ljava/lang/String;

    .line 3513
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    .line 3514
    return-object p0
.end method

.method public setStartFormat(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3487
    if-nez p1, :cond_0

    .line 3488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3490
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->startFormat_:Ljava/lang/String;

    .line 3491
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    .line 3492
    return-object p0
.end method

.method public setTwoItemFormat(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$ListFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3465
    if-nez p1, :cond_0

    .line 3466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3468
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->twoItemFormat_:Ljava/lang/String;

    .line 3469
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    .line 3470
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
    .line 3568
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3569
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->twoItemFormat_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3571
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 3572
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->startFormat_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3574
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 3575
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->middleFormat_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3577
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 3578
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->endFormat_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3580
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 3581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 3582
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ListFormat;->listItemStringValue:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 3583
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 3584
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3581
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3588
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    return-void
.end method
