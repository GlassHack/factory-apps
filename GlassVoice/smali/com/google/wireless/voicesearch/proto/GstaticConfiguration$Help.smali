.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Help"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;


# instance fields
.field private bitField0_:I

.field private privacyUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1433
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    .line 1434
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 2

    .prologue
    .line 1397
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    if-nez v0, :cond_1

    .line 1398
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1400
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    if-nez v0, :cond_0

    .line 1401
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    .line 1403
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    return-object v0

    .line 1403
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1494
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1488
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1

    .prologue
    .line 1437
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->bitField0_:I

    .line 1438
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    .line 1439
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->cachedSize:I

    .line 1440
    return-object p0
.end method

.method public clearPrivacyUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1

    .prologue
    .line 1427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    .line 1428
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->bitField0_:I

    .line 1429
    return-object p0
.end method

.method public getPrivacyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1453
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1454
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1455
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1458
    :cond_0
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->cachedSize:I

    .line 1459
    return v0
.end method

.method public hasPrivacyUrl()Z
    .locals 1

    .prologue
    .line 1424
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->bitField0_:I

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
    .line 1391
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1467
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1468
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1472
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1473
    :sswitch_0
    return-object p0

    .line 1478
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    .line 1479
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->bitField0_:I

    goto :goto_0

    .line 1468
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setPrivacyUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1416
    if-nez p1, :cond_0

    .line 1417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1419
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    .line 1420
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->bitField0_:I

    .line 1421
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
    .line 1446
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1447
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1449
    :cond_0
    return-void
.end method
