.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssociationData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;


# instance fields
.field private bitField0_:I

.field public matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10463
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10464
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    .line 10465
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 2

    .prologue
    .line 10425
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    if-nez v0, :cond_1

    .line 10426
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10428
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    if-nez v0, :cond_0

    .line 10429
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    .line 10431
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10433
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    return-object v0

    .line 10431
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10540
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10534
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1

    .prologue
    .line 10468
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->bitField0_:I

    .line 10469
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    .line 10470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 10471
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->cachedSize:I

    .line 10472
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1

    .prologue
    .line 10455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    .line 10456
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->bitField0_:I

    .line 10457
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10441
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10488
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10489
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10490
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10493
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-eqz v1, :cond_1

    .line 10494
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10497
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->cachedSize:I

    .line 10498
    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 10452
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->bitField0_:I

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
    .line 10419
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10506
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10507
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10511
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10512
    :sswitch_0
    return-object p0

    .line 10517
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    .line 10518
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->bitField0_:I

    goto :goto_0

    .line 10522
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-nez v1, :cond_1

    .line 10523
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 10525
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10507
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10444
    if-nez p1, :cond_0

    .line 10445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10447
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    .line 10448
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->bitField0_:I

    .line 10449
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
    .line 10478
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10479
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10481
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-eqz v0, :cond_1

    .line 10482
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10484
    :cond_1
    return-void
.end method
