.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchList"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;


# instance fields
.field private bitField0_:I

.field private hasHiddenMatchesSecondary_:Z

.field private hasHiddenMatches_:Z

.field public match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9525
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9526
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 9527
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 2

    .prologue
    .line 9471
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-nez v0, :cond_1

    .line 9472
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9474
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-nez v0, :cond_0

    .line 9475
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 9477
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9479
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    return-object v0

    .line 9477
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9638
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9632
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9530
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    .line 9531
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    .line 9532
    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    .line 9533
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9534
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->cachedSize:I

    .line 9535
    return-object p0
.end method

.method public clearHasHiddenMatches()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1

    .prologue
    .line 9498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    .line 9499
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    .line 9500
    return-object p0
.end method

.method public clearHasHiddenMatchesSecondary()Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1

    .prologue
    .line 9517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    .line 9518
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    .line 9519
    return-object p0
.end method

.method public getHasHiddenMatches()Z
    .locals 1

    .prologue
    .line 9487
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    return v0
.end method

.method public getHasHiddenMatchesSecondary()Z
    .locals 1

    .prologue
    .line 9506
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 9559
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 9560
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 9561
    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9564
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 9565
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9568
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 9569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 9570
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    aget-object v0, v3, v1

    .line 9571
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    if-eqz v0, :cond_2

    .line 9572
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9569
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9577
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .end local v1    # "i":I
    :cond_3
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->cachedSize:I

    .line 9578
    return v2
.end method

.method public hasHasHiddenMatches()Z
    .locals 1

    .prologue
    .line 9495
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHasHiddenMatchesSecondary()Z
    .locals 1

    .prologue
    .line 9514
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

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
    .line 9465
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 9586
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 9587
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 9591
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 9592
    :sswitch_0
    return-object p0

    .line 9597
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    .line 9598
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    goto :goto_0

    .line 9602
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    .line 9603
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    goto :goto_0

    .line 9607
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9609
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-nez v5, :cond_2

    move v1, v4

    .line 9610
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9612
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    if-eqz v1, :cond_1

    .line 9613
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9615
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 9616
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    aput-object v5, v2, v1

    .line 9617
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9618
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9615
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9609
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    array-length v1, v5

    goto :goto_1

    .line 9621
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    aput-object v5, v2, v1

    .line 9622
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9623
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    goto :goto_0

    .line 9587
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setHasHiddenMatches(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 9490
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    .line 9491
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    .line 9492
    return-object p0
.end method

.method public setHasHiddenMatchesSecondary(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 9509
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    .line 9510
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    .line 9511
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
    .line 9541
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 9542
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatches_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9544
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 9545
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->hasHiddenMatchesSecondary_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9547
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 9548
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 9549
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;->match:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    aget-object v0, v2, v1

    .line 9550
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    if-eqz v0, :cond_2

    .line 9551
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9548
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9555
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method
