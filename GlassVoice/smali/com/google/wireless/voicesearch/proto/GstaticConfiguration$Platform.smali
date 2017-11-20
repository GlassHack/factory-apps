.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Platform"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;


# instance fields
.field public enabledNoiseSuppressors:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 556
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    .line 557
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 2

    .prologue
    .line 541
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    if-nez v0, :cond_1

    .line 542
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    .line 547
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    return-object v0

    .line 547
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    .line 561
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->cachedSize:I

    .line 562
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 580
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 581
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 584
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 585
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 586
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 587
    add-int/lit8 v0, v0, 0x1

    .line 588
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 584
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 592
    .end local v2    # "element":Ljava/lang/String;
    :cond_1
    add-int/2addr v4, v1

    .line 593
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 595
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_2
    iput v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->cachedSize:I

    .line 596
    return v4
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
    .line 535
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 604
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 605
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 609
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 610
    :sswitch_0
    return-object p0

    .line 615
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 617
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 618
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 619
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 620
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 623
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 624
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 617
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 627
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 628
    iput-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    goto :goto_0

    .line 605
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
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
    .line 568
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 570
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 571
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 572
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 569
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
