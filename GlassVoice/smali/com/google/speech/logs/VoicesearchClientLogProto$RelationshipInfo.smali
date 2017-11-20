.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelationshipInfo"
.end annotation


# static fields
.field public static final QUERY_SOURCE_CONTACT_QUERY:I = 0x1

.field public static final QUERY_SOURCE_INFERRED_SERVER_CONTACT:I = 0x2

.field public static final QUERY_SOURCE_NONE:I = 0x4

.field public static final QUERY_SOURCE_NON_INFERRED_SERVER_CONTACT:I = 0x3

.field private static volatile _emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;


# instance fields
.field private bitField0_:I

.field private isRelationshipQuery_:Z

.field private numContactsInDeleteMap_:I

.field private numContactsServerOnly_:I

.field private numFinalContacts_:I

.field private numRetrievedFromAlias_:I

.field private numRetrievedFromExactMatch_:I

.field private numRetrievedFromScratchspace_:I

.field private numUnusedServerContacts_:I

.field private querySource_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4088
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4089
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->clear()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    .line 4090
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 2

    .prologue
    .line 3904
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    if-nez v0, :cond_1

    .line 3905
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3907
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    if-nez v0, :cond_0

    .line 3908
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    sput-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    .line 3910
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3912
    :cond_1
    sget-object v0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->_emptyArray:[Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    return-object v0

    .line 3910
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4254
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4248
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4093
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4094
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->querySource_:I

    .line 4095
    iput-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->isRelationshipQuery_:Z

    .line 4096
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromExactMatch_:I

    .line 4097
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromAlias_:I

    .line 4098
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromScratchspace_:I

    .line 4099
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsInDeleteMap_:I

    .line 4100
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsServerOnly_:I

    .line 4101
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numUnusedServerContacts_:I

    .line 4102
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numFinalContacts_:I

    .line 4103
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->cachedSize:I

    .line 4104
    return-object p0
.end method

.method public clearIsRelationshipQuery()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1

    .prologue
    .line 3950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->isRelationshipQuery_:Z

    .line 3951
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 3952
    return-object p0
.end method

.method public clearNumContactsInDeleteMap()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1

    .prologue
    .line 4026
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsInDeleteMap_:I

    .line 4027
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4028
    return-object p0
.end method

.method public clearNumContactsServerOnly()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1

    .prologue
    .line 4045
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsServerOnly_:I

    .line 4046
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4047
    return-object p0
.end method

.method public clearNumFinalContacts()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1

    .prologue
    .line 4083
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numFinalContacts_:I

    .line 4084
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4085
    return-object p0
.end method

.method public clearNumRetrievedFromAlias()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1

    .prologue
    .line 3988
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromAlias_:I

    .line 3989
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 3990
    return-object p0
.end method

.method public clearNumRetrievedFromExactMatch()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1

    .prologue
    .line 3969
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromExactMatch_:I

    .line 3970
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 3971
    return-object p0
.end method

.method public clearNumRetrievedFromScratchspace()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1

    .prologue
    .line 4007
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromScratchspace_:I

    .line 4008
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4009
    return-object p0
.end method

.method public clearNumUnusedServerContacts()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1

    .prologue
    .line 4064
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numUnusedServerContacts_:I

    .line 4065
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4066
    return-object p0
.end method

.method public clearQuerySource()Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1

    .prologue
    .line 3931
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->querySource_:I

    .line 3932
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 3933
    return-object p0
.end method

.method public getIsRelationshipQuery()Z
    .locals 1

    .prologue
    .line 3939
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->isRelationshipQuery_:Z

    return v0
.end method

.method public getNumContactsInDeleteMap()I
    .locals 1

    .prologue
    .line 4015
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsInDeleteMap_:I

    return v0
.end method

.method public getNumContactsServerOnly()I
    .locals 1

    .prologue
    .line 4034
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsServerOnly_:I

    return v0
.end method

.method public getNumFinalContacts()I
    .locals 1

    .prologue
    .line 4072
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numFinalContacts_:I

    return v0
.end method

.method public getNumRetrievedFromAlias()I
    .locals 1

    .prologue
    .line 3977
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromAlias_:I

    return v0
.end method

.method public getNumRetrievedFromExactMatch()I
    .locals 1

    .prologue
    .line 3958
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromExactMatch_:I

    return v0
.end method

.method public getNumRetrievedFromScratchspace()I
    .locals 1

    .prologue
    .line 3996
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromScratchspace_:I

    return v0
.end method

.method public getNumUnusedServerContacts()I
    .locals 1

    .prologue
    .line 4053
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numUnusedServerContacts_:I

    return v0
.end method

.method public getQuerySource()I
    .locals 1

    .prologue
    .line 3920
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->querySource_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4141
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4142
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4143
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->querySource_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4146
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4147
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->isRelationshipQuery_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4150
    :cond_1
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4151
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromExactMatch_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4154
    :cond_2
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4155
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromAlias_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4158
    :cond_3
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 4159
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromScratchspace_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4162
    :cond_4
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 4163
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsInDeleteMap_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4166
    :cond_5
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 4167
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsServerOnly_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4170
    :cond_6
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 4171
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numUnusedServerContacts_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4174
    :cond_7
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 4175
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numFinalContacts_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4178
    :cond_8
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->cachedSize:I

    .line 4179
    return v0
.end method

.method public hasIsRelationshipQuery()Z
    .locals 1

    .prologue
    .line 3947
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumContactsInDeleteMap()Z
    .locals 1

    .prologue
    .line 4023
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumContactsServerOnly()Z
    .locals 1

    .prologue
    .line 4042
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumFinalContacts()Z
    .locals 1

    .prologue
    .line 4080
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumRetrievedFromAlias()Z
    .locals 1

    .prologue
    .line 3985
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumRetrievedFromExactMatch()Z
    .locals 1

    .prologue
    .line 3966
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumRetrievedFromScratchspace()Z
    .locals 1

    .prologue
    .line 4004
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumUnusedServerContacts()Z
    .locals 1

    .prologue
    .line 4061
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQuerySource()Z
    .locals 1

    .prologue
    .line 3928
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

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
    .line 3892
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4187
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4188
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4192
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4193
    :sswitch_0
    return-object p0

    .line 4198
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->querySource_:I

    .line 4199
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    goto :goto_0

    .line 4203
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->isRelationshipQuery_:Z

    .line 4204
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    goto :goto_0

    .line 4208
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromExactMatch_:I

    .line 4209
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    goto :goto_0

    .line 4213
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromAlias_:I

    .line 4214
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    goto :goto_0

    .line 4218
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromScratchspace_:I

    .line 4219
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    goto :goto_0

    .line 4223
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsInDeleteMap_:I

    .line 4224
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    goto :goto_0

    .line 4228
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsServerOnly_:I

    .line 4229
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    goto :goto_0

    .line 4233
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numUnusedServerContacts_:I

    .line 4234
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    goto :goto_0

    .line 4238
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numFinalContacts_:I

    .line 4239
    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    goto/16 :goto_0

    .line 4188
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public setIsRelationshipQuery(Z)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3942
    iput-boolean p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->isRelationshipQuery_:Z

    .line 3943
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 3944
    return-object p0
.end method

.method public setNumContactsInDeleteMap(I)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4018
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsInDeleteMap_:I

    .line 4019
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4020
    return-object p0
.end method

.method public setNumContactsServerOnly(I)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4037
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsServerOnly_:I

    .line 4038
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4039
    return-object p0
.end method

.method public setNumFinalContacts(I)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4075
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numFinalContacts_:I

    .line 4076
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4077
    return-object p0
.end method

.method public setNumRetrievedFromAlias(I)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3980
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromAlias_:I

    .line 3981
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 3982
    return-object p0
.end method

.method public setNumRetrievedFromExactMatch(I)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3961
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromExactMatch_:I

    .line 3962
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 3963
    return-object p0
.end method

.method public setNumRetrievedFromScratchspace(I)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3999
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromScratchspace_:I

    .line 4000
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4001
    return-object p0
.end method

.method public setNumUnusedServerContacts(I)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4056
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numUnusedServerContacts_:I

    .line 4057
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 4058
    return-object p0
.end method

.method public setQuerySource(I)Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3923
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->querySource_:I

    .line 3924
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    .line 3925
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
    .line 4110
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4111
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->querySource_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4113
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4114
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->isRelationshipQuery_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4116
    :cond_1
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4117
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromExactMatch_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4119
    :cond_2
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4120
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromAlias_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4122
    :cond_3
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 4123
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numRetrievedFromScratchspace_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4125
    :cond_4
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 4126
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsInDeleteMap_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4128
    :cond_5
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 4129
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numContactsServerOnly_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4131
    :cond_6
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 4132
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numUnusedServerContacts_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4134
    :cond_7
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 4135
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$RelationshipInfo;->numFinalContacts_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4137
    :cond_8
    return-void
.end method
