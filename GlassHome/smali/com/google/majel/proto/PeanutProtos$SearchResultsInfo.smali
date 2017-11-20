.class public final Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchResultsInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;


# instance fields
.field private bitField0_:I

.field private query_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 853
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->clear()Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    .line 854
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 2

    .prologue
    .line 817
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    if-nez v0, :cond_1

    .line 818
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 820
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    if-nez v0, :cond_0

    .line 821
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    sput-object v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    .line 823
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :cond_1
    sget-object v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->_emptyArray:[Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    return-object v0

    .line 823
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 908
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->bitField0_:I

    .line 858
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    .line 859
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->cachedSize:I

    .line 860
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1

    .prologue
    .line 847
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    .line 848
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->bitField0_:I

    .line 849
    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 873
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 874
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 875
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 878
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->cachedSize:I

    .line 879
    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->bitField0_:I

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
    .line 811
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 888
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 892
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 893
    :sswitch_0
    return-object p0

    .line 898
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    .line 899
    iget v1, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->bitField0_:I

    goto :goto_0

    .line 888
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 839
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    .line 840
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->bitField0_:I

    .line 841
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
    .line 866
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 867
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;->query_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 869
    :cond_0
    return-void
.end method
