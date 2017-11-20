.class public final Lcom/google/majel/proto/ActionV2Protos$SearchAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SearchAction;


# instance fields
.field private bitField0_:I

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11487
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11488
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->clear()Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    .line 11489
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$SearchAction;
    .locals 2

    .prologue
    .line 11452
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    if-nez v0, :cond_1

    .line 11453
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11455
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    if-nez v0, :cond_0

    .line 11456
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    .line 11458
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11460
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    return-object v0

    .line 11458
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SearchAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11549
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SearchAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$SearchAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11543
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SearchAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$SearchAction;
    .locals 1

    .prologue
    .line 11492
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->bitField0_:I

    .line 11493
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->query_:Ljava/lang/String;

    .line 11494
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->cachedSize:I

    .line 11495
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/ActionV2Protos$SearchAction;
    .locals 1

    .prologue
    .line 11482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->query_:Ljava/lang/String;

    .line 11483
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->bitField0_:I

    .line 11484
    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11468
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11508
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11509
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11510
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->query_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11513
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->cachedSize:I

    .line 11514
    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 11479
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->bitField0_:I

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
    .line 11446
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SearchAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SearchAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11522
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11523
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11527
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11528
    :sswitch_0
    return-object p0

    .line 11533
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->query_:Ljava/lang/String;

    .line 11534
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->bitField0_:I

    goto :goto_0

    .line 11523
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SearchAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11471
    if-nez p1, :cond_0

    .line 11472
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11474
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->query_:Ljava/lang/String;

    .line 11475
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->bitField0_:I

    .line 11476
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
    .line 11501
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11502
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SearchAction;->query_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11504
    :cond_0
    return-void
.end method
