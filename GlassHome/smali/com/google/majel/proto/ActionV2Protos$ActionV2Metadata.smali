.class public final Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionV2Metadata"
.end annotation


# static fields
.field public static final ACTION_ORIGIN_ACTIONS_IN_SEARCH:I = 0x1

.field public static final ACTION_ORIGIN_GSA:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;


# instance fields
.field private actionOrigin_:I

.field private actionType_:I

.field private bitField0_:I

.field private highConfidenceInterpretation_:Z

.field private parsedActionType_:I

.field private serverState_:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1061
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->clear()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    .line 1062
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 2

    .prologue
    .line 949
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    if-nez v0, :cond_1

    .line 950
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 952
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    if-nez v0, :cond_0

    .line 953
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    .line 955
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    return-object v0

    .line 955
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1168
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1065
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 1066
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    .line 1067
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    .line 1068
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->serverState_:[B

    .line 1069
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->highConfidenceInterpretation_:Z

    .line 1070
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionOrigin_:I

    .line 1071
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->cachedSize:I

    .line 1072
    return-object p0
.end method

.method public clearActionOrigin()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1

    .prologue
    .line 1055
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionOrigin_:I

    .line 1056
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 1057
    return-object p0
.end method

.method public clearActionType()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    .line 977
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 978
    return-object p0
.end method

.method public clearHighConfidenceInterpretation()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->highConfidenceInterpretation_:Z

    .line 1037
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 1038
    return-object p0
.end method

.method public clearParsedActionType()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    .line 996
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 997
    return-object p0
.end method

.method public clearServerState()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1

    .prologue
    .line 1017
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->serverState_:[B

    .line 1018
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 1019
    return-object p0
.end method

.method public getActionOrigin()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionOrigin_:I

    return v0
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    return v0
.end method

.method public getHighConfidenceInterpretation()Z
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->highConfidenceInterpretation_:Z

    return v0
.end method

.method public getParsedActionType()I
    .locals 1

    .prologue
    .line 984
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1097
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1098
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1099
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1102
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1103
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1106
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1107
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->serverState_:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1110
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1111
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->highConfidenceInterpretation_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1114
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1115
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionOrigin_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1118
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->cachedSize:I

    .line 1119
    return v0
.end method

.method public getServerState()[B
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->serverState_:[B

    return-object v0
.end method

.method public hasActionOrigin()Z
    .locals 1

    .prologue
    .line 1052
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActionType()Z
    .locals 1

    .prologue
    .line 973
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHighConfidenceInterpretation()Z
    .locals 1

    .prologue
    .line 1033
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParsedActionType()Z
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerState()Z
    .locals 1

    .prologue
    .line 1014
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

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
    .line 939
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1127
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1128
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1132
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1133
    :sswitch_0
    return-object p0

    .line 1138
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    .line 1139
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    goto :goto_0

    .line 1143
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    .line 1144
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    goto :goto_0

    .line 1148
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->serverState_:[B

    .line 1149
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    goto :goto_0

    .line 1153
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->highConfidenceInterpretation_:Z

    .line 1154
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    goto :goto_0

    .line 1158
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionOrigin_:I

    .line 1159
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    goto :goto_0

    .line 1128
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setActionOrigin(I)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1047
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionOrigin_:I

    .line 1048
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 1049
    return-object p0
.end method

.method public setActionType(I)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 968
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    .line 969
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 970
    return-object p0
.end method

.method public setHighConfidenceInterpretation(Z)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1028
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->highConfidenceInterpretation_:Z

    .line 1029
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 1030
    return-object p0
.end method

.method public setParsedActionType(I)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 987
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    .line 988
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 989
    return-object p0
.end method

.method public setServerState([B)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 1006
    if-nez p1, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1009
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->serverState_:[B

    .line 1010
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    .line 1011
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
    .line 1078
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1079
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1081
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1082
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1084
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1085
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->serverState_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1087
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1088
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->highConfidenceInterpretation_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1090
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1091
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionOrigin_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1093
    :cond_4
    return-void
.end method
