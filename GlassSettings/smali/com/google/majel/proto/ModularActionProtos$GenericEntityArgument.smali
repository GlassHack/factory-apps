.class public final Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericEntityArgument"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;


# instance fields
.field private bitField0_:I

.field private query_:Ljava/lang/String;

.field public value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 852
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->clear()Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    .line 853
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;
    .locals 2

    .prologue
    .line 813
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    if-nez v0, :cond_1

    .line 814
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 816
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    if-nez v0, :cond_0

    .line 817
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    .line 819
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    return-object v0

    .line 819
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 945
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->bitField0_:I

    .line 857
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->query_:Ljava/lang/String;

    .line 858
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    .line 859
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->cachedSize:I

    .line 860
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;
    .locals 1

    .prologue
    .line 843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->query_:Ljava/lang/String;

    .line 844
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->bitField0_:I

    .line 845
    return-object p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 881
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 882
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 883
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->query_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 886
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 887
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 888
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    aget-object v0, v3, v1

    .line 889
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    if-eqz v0, :cond_1

    .line 890
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 887
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 895
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .end local v1    # "i":I
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->cachedSize:I

    .line 896
    return v2
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->bitField0_:I

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
    .line 807
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 904
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 905
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 909
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 910
    :sswitch_0
    return-object p0

    .line 915
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->query_:Ljava/lang/String;

    .line 916
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->bitField0_:I

    goto :goto_0

    .line 920
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 922
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    if-nez v5, :cond_2

    move v1, v4

    .line 923
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    .line 925
    .local v2, "newArray":[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    if-eqz v1, :cond_1

    .line 926
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 929
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;-><init>()V

    aput-object v5, v2, v1

    .line 930
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 931
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 922
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    array-length v1, v5

    goto :goto_1

    .line 934
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$GenericEntity;-><init>()V

    aput-object v5, v2, v1

    .line 935
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 936
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    goto :goto_0

    .line 905
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 832
    if-nez p1, :cond_0

    .line 833
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 835
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->query_:Ljava/lang/String;

    .line 836
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->bitField0_:I

    .line 837
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
    .line 866
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 867
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->query_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 869
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 870
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 871
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$GenericEntityArgument;->value:[Lcom/google/majel/proto/ModularActionProtos$GenericEntity;

    aget-object v0, v2, v1

    .line 872
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    if-eqz v0, :cond_1

    .line 873
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 870
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$GenericEntity;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
