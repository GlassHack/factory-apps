.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3589
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3590
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    .line 3591
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .locals 2

    .prologue
    .line 3532
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    if-nez v0, :cond_1

    .line 3533
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3535
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    if-nez v0, :cond_0

    .line 3536
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    .line 3538
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3540
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    return-object v0

    .line 3538
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3664
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3658
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .locals 1

    .prologue
    .line 3594
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    .line 3595
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->key_:Ljava/lang/String;

    .line 3596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->value_:Ljava/lang/String;

    .line 3597
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->cachedSize:I

    .line 3598
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .locals 1

    .prologue
    .line 3562
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->key_:Ljava/lang/String;

    .line 3563
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    .line 3564
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .locals 1

    .prologue
    .line 3584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->value_:Ljava/lang/String;

    .line 3585
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    .line 3586
    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3548
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3614
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3615
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3616
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->key_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3619
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3620
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3623
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->cachedSize:I

    .line 3624
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3570
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 3559
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 3581
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 3526
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3632
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3633
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3637
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3638
    :sswitch_0
    return-object p0

    .line 3643
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->key_:Ljava/lang/String;

    .line 3644
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    goto :goto_0

    .line 3648
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->value_:Ljava/lang/String;

    .line 3649
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    goto :goto_0

    .line 3633
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3551
    if-nez p1, :cond_0

    .line 3552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3554
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->key_:Ljava/lang/String;

    .line 3555
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    .line 3556
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3573
    if-nez p1, :cond_0

    .line 3574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3576
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->value_:Ljava/lang/String;

    .line 3577
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    .line 3578
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
    .line 3604
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3605
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->key_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3607
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3608
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3610
    :cond_1
    return-void
.end method
