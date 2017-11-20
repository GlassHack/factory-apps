.class public final Lcom/google/majel/proto/ModularActionProtos$UserIntent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserIntent"
.end annotation


# static fields
.field public static final CONFIRMATION_EXPLICIT:I = 0x0

.field public static final CONFIRMATION_IMPLICIT:I = 0x1

.field public static final CONFIRMATION_NONE:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;


# instance fields
.field private appCategoryName_:Ljava/lang/String;

.field private bitField0_:I

.field public canceled:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

.field public editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

.field public executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

.field public executionDone:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

.field public executionError:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

.field private isUndoable_:Z

.field public requiredArgumentId:[I

.field private requiredConfirmation_:I

.field public shownArgumentId:[I

.field private title_:Ljava/lang/String;

.field public uncertainResult:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1842
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1843
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->clear()Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    .line 1844
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 2

    .prologue
    .line 1723
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    if-nez v0, :cond_1

    .line 1724
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1726
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    if-nez v0, :cond_0

    .line 1727
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    .line 1729
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    return-object v0

    .line 1729
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2191
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$UserIntent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2185
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$UserIntent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1847
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    .line 1848
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    .line 1849
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    .line 1850
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionDone:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    .line 1851
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionError:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    .line 1852
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->canceled:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    .line 1853
    iput-object v1, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->uncertainResult:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    .line 1854
    iput-boolean v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->isUndoable_:Z

    .line 1855
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredConfirmation_:I

    .line 1856
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->title_:Ljava/lang/String;

    .line 1857
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    .line 1858
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    .line 1859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->appCategoryName_:Ljava/lang/String;

    .line 1860
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->cachedSize:I

    .line 1861
    return-object p0
.end method

.method public clearAppCategoryName()Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 1

    .prologue
    .line 1837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->appCategoryName_:Ljava/lang/String;

    .line 1838
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    .line 1839
    return-object p0
.end method

.method public clearIsUndoable()Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 1

    .prologue
    .line 1768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->isUndoable_:Z

    .line 1769
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    .line 1770
    return-object p0
.end method

.method public clearRequiredConfirmation()Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 1

    .prologue
    .line 1787
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredConfirmation_:I

    .line 1788
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    .line 1789
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 1

    .prologue
    .line 1809
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->title_:Ljava/lang/String;

    .line 1810
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    .line 1811
    return-object p0
.end method

.method public getAppCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->appCategoryName_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsUndoable()Z
    .locals 1

    .prologue
    .line 1757
    iget-boolean v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->isUndoable_:Z

    return v0
.end method

.method public getRequiredConfirmation()I
    .locals 1

    .prologue
    .line 1776
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredConfirmation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1921
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v3

    .line 1922
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 1923
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 1924
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    aget-object v1, v4, v2

    .line 1925
    .local v1, "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    if-eqz v1, :cond_0

    .line 1926
    const/4 v4, 0x1

    invoke-static {v4, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1923
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1931
    .end local v1    # "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .end local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v4, v4

    if-lez v4, :cond_3

    .line 1932
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 1933
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    aget-object v1, v4, v2

    .line 1934
    .restart local v1    # "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    if-eqz v1, :cond_2

    .line 1935
    const/4 v4, 0x2

    invoke-static {v4, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1932
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1940
    .end local v1    # "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .end local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionDone:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-eqz v4, :cond_4

    .line 1941
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionDone:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1944
    :cond_4
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionError:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-eqz v4, :cond_5

    .line 1945
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionError:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1948
    :cond_5
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->canceled:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-eqz v4, :cond_6

    .line 1949
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->canceled:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1952
    :cond_6
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->uncertainResult:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-eqz v4, :cond_7

    .line 1953
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->uncertainResult:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1956
    :cond_7
    iget v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    .line 1957
    const/4 v4, 0x7

    iget-boolean v5, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->isUndoable_:Z

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1960
    :cond_8
    iget v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    .line 1961
    const/16 v4, 0x8

    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredConfirmation_:I

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1964
    :cond_9
    iget v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_a

    .line 1965
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->title_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1968
    :cond_a
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    array-length v4, v4

    if-lez v4, :cond_c

    .line 1969
    const/4 v0, 0x0

    .line 1970
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    array-length v4, v4

    if-ge v2, v4, :cond_b

    .line 1971
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    aget v1, v4, v2

    .line 1972
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1970
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1975
    .end local v1    # "element":I
    :cond_b
    add-int/2addr v3, v0

    .line 1976
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1978
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_c
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    array-length v4, v4

    if-lez v4, :cond_e

    .line 1979
    const/4 v0, 0x0

    .line 1980
    .restart local v0    # "dataSize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    array-length v4, v4

    if-ge v2, v4, :cond_d

    .line 1981
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    aget v1, v4, v2

    .line 1982
    .restart local v1    # "element":I
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1980
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1985
    .end local v1    # "element":I
    :cond_d
    add-int/2addr v3, v0

    .line 1986
    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1988
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_e
    iget v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_f

    .line 1989
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->appCategoryName_:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1992
    :cond_f
    iput v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->cachedSize:I

    .line 1993
    return v3
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppCategoryName()Z
    .locals 1

    .prologue
    .line 1834
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsUndoable()Z
    .locals 1

    .prologue
    .line 1765
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequiredConfirmation()Z
    .locals 1

    .prologue
    .line 1784
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 1806
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 1712
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$UserIntent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 9
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2001
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    .line 2002
    .local v6, "tag":I
    sparse-switch v6, :sswitch_data_0

    .line 2006
    invoke-static {p1, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2007
    :sswitch_0
    return-object p0

    .line 2012
    :sswitch_1
    const/16 v8, 0xa

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2014
    .local v0, "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-nez v8, :cond_2

    move v1, v7

    .line 2015
    .local v1, "i":I
    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    .line 2017
    .local v4, "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    if-eqz v1, :cond_1

    .line 2018
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2020
    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    .line 2021
    new-instance v8, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-direct {v8}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;-><init>()V

    aput-object v8, v4, v1

    .line 2022
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2023
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2020
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2014
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    :cond_2
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v1, v8

    goto :goto_1

    .line 2026
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    :cond_3
    new-instance v8, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-direct {v8}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;-><init>()V

    aput-object v8, v4, v1

    .line 2027
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2028
    iput-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    goto :goto_0

    .line 2032
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    :sswitch_2
    const/16 v8, 0x12

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2034
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-nez v8, :cond_5

    move v1, v7

    .line 2035
    .restart local v1    # "i":I
    :goto_3
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    .line 2037
    .restart local v4    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    if-eqz v1, :cond_4

    .line 2038
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2040
    :cond_4
    :goto_4
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    .line 2041
    new-instance v8, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-direct {v8}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;-><init>()V

    aput-object v8, v4, v1

    .line 2042
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2043
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2040
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2034
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    :cond_5
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v1, v8

    goto :goto_3

    .line 2046
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    :cond_6
    new-instance v8, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    invoke-direct {v8}, Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;-><init>()V

    aput-object v8, v4, v1

    .line 2047
    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2048
    iput-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    goto/16 :goto_0

    .line 2052
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    :sswitch_3
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionDone:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-nez v8, :cond_7

    .line 2053
    new-instance v8, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-direct {v8}, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionDone:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    .line 2055
    :cond_7
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionDone:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2059
    :sswitch_4
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionError:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-nez v8, :cond_8

    .line 2060
    new-instance v8, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-direct {v8}, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionError:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    .line 2062
    :cond_8
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionError:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2066
    :sswitch_5
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->canceled:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-nez v8, :cond_9

    .line 2067
    new-instance v8, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-direct {v8}, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->canceled:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    .line 2069
    :cond_9
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->canceled:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2073
    :sswitch_6
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->uncertainResult:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-nez v8, :cond_a

    .line 2074
    new-instance v8, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-direct {v8}, Lcom/google/majel/proto/ModularActionProtos$ExecutionState;-><init>()V

    iput-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->uncertainResult:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    .line 2076
    :cond_a
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->uncertainResult:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-virtual {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2080
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->isUndoable_:Z

    .line 2081
    iget v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    goto/16 :goto_0

    .line 2085
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredConfirmation_:I

    .line 2086
    iget v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    goto/16 :goto_0

    .line 2090
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->title_:Ljava/lang/String;

    .line 2091
    iget v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    goto/16 :goto_0

    .line 2095
    :sswitch_a
    const/16 v8, 0x58

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2097
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    if-nez v8, :cond_c

    move v1, v7

    .line 2098
    .restart local v1    # "i":I
    :goto_5
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 2099
    .local v4, "newArray":[I
    if-eqz v1, :cond_b

    .line 2100
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2102
    :cond_b
    :goto_6
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_d

    .line 2103
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2104
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2102
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2097
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_c
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    array-length v1, v8

    goto :goto_5

    .line 2107
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2108
    iput-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    goto/16 :goto_0

    .line 2112
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 2113
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 2115
    .local v3, "limit":I
    const/4 v0, 0x0

    .line 2116
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 2117
    .local v5, "startPos":I
    :goto_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_e

    .line 2118
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 2119
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2121
    :cond_e
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2122
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    if-nez v8, :cond_10

    move v1, v7

    .line 2123
    .restart local v1    # "i":I
    :goto_8
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 2124
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_f

    .line 2125
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2127
    :cond_f
    :goto_9
    array-length v8, v4

    if-ge v1, v8, :cond_11

    .line 2128
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2127
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2122
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_10
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    array-length v1, v8

    goto :goto_8

    .line 2130
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_11
    iput-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    .line 2131
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 2135
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_c
    const/16 v8, 0x60

    invoke-static {p1, v8}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2137
    .restart local v0    # "arrayLength":I
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    if-nez v8, :cond_13

    move v1, v7

    .line 2138
    .restart local v1    # "i":I
    :goto_a
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 2139
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_12

    .line 2140
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2142
    :cond_12
    :goto_b
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_14

    .line 2143
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2144
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2142
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2137
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_13
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    array-length v1, v8

    goto :goto_a

    .line 2147
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2148
    iput-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    goto/16 :goto_0

    .line 2152
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 2153
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 2155
    .restart local v3    # "limit":I
    const/4 v0, 0x0

    .line 2156
    .restart local v0    # "arrayLength":I
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 2157
    .restart local v5    # "startPos":I
    :goto_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_15

    .line 2158
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 2159
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2161
    :cond_15
    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 2162
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    if-nez v8, :cond_17

    move v1, v7

    .line 2163
    .restart local v1    # "i":I
    :goto_d
    add-int v8, v1, v0

    new-array v4, v8, [I

    .line 2164
    .restart local v4    # "newArray":[I
    if-eqz v1, :cond_16

    .line 2165
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2167
    :cond_16
    :goto_e
    array-length v8, v4

    if-ge v1, v8, :cond_18

    .line 2168
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    aput v8, v4, v1

    .line 2167
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2162
    .end local v1    # "i":I
    .end local v4    # "newArray":[I
    :cond_17
    iget-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    array-length v1, v8

    goto :goto_d

    .line 2170
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[I
    :cond_18
    iput-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    .line 2171
    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 2175
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[I
    .end local v5    # "startPos":I
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->appCategoryName_:Ljava/lang/String;

    .line 2176
    iget v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    goto/16 :goto_0

    .line 2002
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x52 -> :sswitch_9
        0x58 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x62 -> :sswitch_d
        0x6a -> :sswitch_e
    .end sparse-switch
.end method

.method public setAppCategoryName(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1826
    if-nez p1, :cond_0

    .line 1827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1829
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->appCategoryName_:Ljava/lang/String;

    .line 1830
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    .line 1831
    return-object p0
.end method

.method public setIsUndoable(Z)Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1760
    iput-boolean p1, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->isUndoable_:Z

    .line 1761
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    .line 1762
    return-object p0
.end method

.method public setRequiredConfirmation(I)Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1779
    iput p1, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredConfirmation_:I

    .line 1780
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    .line 1781
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/ModularActionProtos$UserIntent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1798
    if-nez p1, :cond_0

    .line 1799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1801
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->title_:Ljava/lang/String;

    .line 1802
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    .line 1803
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
    .line 1867
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1868
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1869
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executeExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    aget-object v0, v2, v1

    .line 1870
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    if-eqz v0, :cond_0

    .line 1871
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1868
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1875
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 1876
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1877
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->editExecutionInfo:[Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;

    aget-object v0, v2, v1

    .line 1878
    .restart local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    if-eqz v0, :cond_2

    .line 1879
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1876
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1883
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ExecutionInfo;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionDone:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-eqz v2, :cond_4

    .line 1884
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionDone:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1886
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionError:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-eqz v2, :cond_5

    .line 1887
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->executionError:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1889
    :cond_5
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->canceled:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-eqz v2, :cond_6

    .line 1890
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->canceled:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1892
    :cond_6
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->uncertainResult:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    if-eqz v2, :cond_7

    .line 1893
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->uncertainResult:Lcom/google/majel/proto/ModularActionProtos$ExecutionState;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1895
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 1896
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->isUndoable_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1898
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9

    .line 1899
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredConfirmation_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1901
    :cond_9
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a

    .line 1902
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->title_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1904
    :cond_a
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    array-length v2, v2

    if-lez v2, :cond_b

    .line 1905
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 1906
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->shownArgumentId:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1905
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1909
    .end local v1    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    array-length v2, v2

    if-lez v2, :cond_c

    .line 1910
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 1911
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->requiredArgumentId:[I

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1910
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1914
    .end local v1    # "i":I
    :cond_c
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_d

    .line 1915
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$UserIntent;->appCategoryName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1917
    :cond_d
    return-void
.end method
