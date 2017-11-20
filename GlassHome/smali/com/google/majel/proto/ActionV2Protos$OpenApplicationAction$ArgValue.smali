.class public final Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArgValue"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;


# instance fields
.field private argName_:Ljava/lang/String;

.field private bitField0_:I

.field private boolValue_:Z

.field private doubleValue_:D

.field private intValue_:I

.field private stringValue_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4979
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4980
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->clear()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 4981
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 2

    .prologue
    .line 4865
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    if-nez v0, :cond_1

    .line 4866
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4868
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    if-nez v0, :cond_0

    .line 4869
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 4871
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4873
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    return-object v0

    .line 4871
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5093
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5087
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4984
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4985
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    .line 4986
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    .line 4987
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    .line 4988
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    .line 4989
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    .line 4990
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->cachedSize:I

    .line 4991
    return-object p0
.end method

.method public clearArgName()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1

    .prologue
    .line 4895
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    .line 4896
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4897
    return-object p0
.end method

.method public clearBoolValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1

    .prologue
    .line 4936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    .line 4937
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4938
    return-object p0
.end method

.method public clearDoubleValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 2

    .prologue
    .line 4974
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    .line 4975
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4976
    return-object p0
.end method

.method public clearIntValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1

    .prologue
    .line 4955
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    .line 4956
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4957
    return-object p0
.end method

.method public clearStringValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1

    .prologue
    .line 4917
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    .line 4918
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4919
    return-object p0
.end method

.method public getArgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4881
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    return-object v0
.end method

.method public getBoolValue()Z
    .locals 1

    .prologue
    .line 4925
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    return v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 4963
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    return-wide v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 4944
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 5016
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 5017
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5018
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5021
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5022
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5025
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5026
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5029
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5030
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5033
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 5034
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 5037
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->cachedSize:I

    .line 5038
    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4903
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public hasArgName()Z
    .locals 1

    .prologue
    .line 4892
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBoolValue()Z
    .locals 1

    .prologue
    .line 4933
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDoubleValue()Z
    .locals 1

    .prologue
    .line 4971
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIntValue()Z
    .locals 1

    .prologue
    .line 4952
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStringValue()Z
    .locals 1

    .prologue
    .line 4914
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

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
    .line 4859
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 3
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5046
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5047
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5051
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5052
    :sswitch_0
    return-object p0

    .line 5057
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    .line 5058
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    goto :goto_0

    .line 5062
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    .line 5063
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    goto :goto_0

    .line 5067
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    .line 5068
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    goto :goto_0

    .line 5072
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    .line 5073
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    goto :goto_0

    .line 5077
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    .line 5078
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    goto :goto_0

    .line 5047
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x29 -> :sswitch_5
    .end sparse-switch
.end method

.method public setArgName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4884
    if-nez p1, :cond_0

    .line 4885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4887
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    .line 4888
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4889
    return-object p0
.end method

.method public setBoolValue(Z)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4928
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    .line 4929
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4930
    return-object p0
.end method

.method public setDoubleValue(D)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 4966
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    .line 4967
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4968
    return-object p0
.end method

.method public setIntValue(I)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4947
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    .line 4948
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4949
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4906
    if-nez p1, :cond_0

    .line 4907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4909
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    .line 4910
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    .line 4911
    return-object p0
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
    .line 4997
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4998
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5000
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5001
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5003
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5004
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5006
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5007
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5009
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5010
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5012
    :cond_4
    return-void
.end method
