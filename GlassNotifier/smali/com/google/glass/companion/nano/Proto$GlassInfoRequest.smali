.class public final Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassInfoRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;


# instance fields
.field private bitField0_:I

.field private requestBatteryLevel_:Z

.field private requestDeviceName_:Z

.field private requestNeedSetup_:Z

.field private requestScreenDimensions_:Z

.field private requestSoftwareVersion_:Z

.field private requestStorageInfo_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4980
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4981
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->clear()Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    .line 4982
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 2

    .prologue
    .line 4851
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    if-nez v0, :cond_1

    .line 4852
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4854
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    if-nez v0, :cond_0

    .line 4855
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    .line 4857
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4859
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    return-object v0

    .line 4857
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5163
    new-instance v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5157
    new-instance v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4985
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4986
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4987
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4988
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4989
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4990
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4991
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4993
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->cachedSize:I

    .line 4994
    return-object p0
.end method

.method public clearRequestBatteryLevel()Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4874
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4875
    return-object p0
.end method

.method public clearRequestDeviceName()Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4912
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4913
    return-object p0
.end method

.method public clearRequestNeedSetup()Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4950
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4951
    return-object p0
.end method

.method public clearRequestScreenDimensions()Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4969
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4970
    return-object p0
.end method

.method public clearRequestSoftwareVersion()Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4931
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4932
    return-object p0
.end method

.method public clearRequestStorageInfo()Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 4892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4893
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4894
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 5078
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5079
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5080
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 5081
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5083
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5084
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 5085
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5087
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5088
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 5089
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5091
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5092
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 5093
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5095
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 5096
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 5097
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5099
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 5100
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 5101
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5103
    :cond_5
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4999
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 5033
    :cond_0
    :goto_0
    return v1

    .line 5002
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 5005
    check-cast v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    .line 5006
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    if-ne v3, v4, :cond_0

    .line 5010
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    if-ne v3, v4, :cond_0

    .line 5014
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestDeviceName_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestDeviceName_:Z

    if-ne v3, v4, :cond_0

    .line 5018
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    if-ne v3, v4, :cond_0

    .line 5022
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    if-ne v3, v4, :cond_0

    .line 5026
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    if-ne v3, v4, :cond_0

    .line 5030
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5031
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 5033
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getRequestBatteryLevel()Z
    .locals 1

    .prologue
    .line 4867
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    return v0
.end method

.method public getRequestDeviceName()Z
    .locals 1

    .prologue
    .line 4905
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestDeviceName_:Z

    return v0
.end method

.method public getRequestNeedSetup()Z
    .locals 1

    .prologue
    .line 4943
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    return v0
.end method

.method public getRequestScreenDimensions()Z
    .locals 1

    .prologue
    .line 4962
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    return v0
.end method

.method public getRequestSoftwareVersion()Z
    .locals 1

    .prologue
    .line 4924
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    return v0
.end method

.method public getRequestStorageInfo()Z
    .locals 1

    .prologue
    .line 4886
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    return v0
.end method

.method public hasRequestBatteryLevel()Z
    .locals 1

    .prologue
    .line 4870
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestDeviceName()Z
    .locals 1

    .prologue
    .line 4908
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestNeedSetup()Z
    .locals 1

    .prologue
    .line 4946
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestScreenDimensions()Z
    .locals 1

    .prologue
    .line 4965
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestSoftwareVersion()Z
    .locals 1

    .prologue
    .line 4927
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestStorageInfo()Z
    .locals 1

    .prologue
    .line 4889
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 5038
    const/16 v0, 0x11

    .line 5039
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 5040
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 5041
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 5042
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestDeviceName_:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 5043
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 5044
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    add-int v0, v4, v1

    .line 5045
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    if-eqz v4, :cond_6

    :goto_5
    add-int v0, v1, v2

    .line 5046
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5047
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    const/4 v1, 0x0

    .line 5048
    :goto_6
    add-int v0, v2, v1

    .line 5049
    return v0

    :cond_1
    move v1, v3

    .line 5040
    goto :goto_0

    :cond_2
    move v1, v3

    .line 5041
    goto :goto_1

    :cond_3
    move v1, v3

    .line 5042
    goto :goto_2

    :cond_4
    move v1, v3

    .line 5043
    goto :goto_3

    :cond_5
    move v1, v3

    .line 5044
    goto :goto_4

    :cond_6
    move v2, v3

    .line 5045
    goto :goto_5

    .line 5048
    :cond_7
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5111
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5112
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5116
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5117
    :sswitch_0
    return-object p0

    .line 5122
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 5123
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 5127
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 5128
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 5132
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 5133
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 5137
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 5138
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 5142
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 5143
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 5147
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 5148
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 5112
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4845
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRequestBatteryLevel(Z)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4878
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 4879
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4880
    return-object p0
.end method

.method public setRequestDeviceName(Z)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4916
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 4917
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4918
    return-object p0
.end method

.method public setRequestNeedSetup(Z)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4954
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 4955
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4956
    return-object p0
.end method

.method public setRequestScreenDimensions(Z)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4973
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    .line 4974
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4975
    return-object p0
.end method

.method public setRequestSoftwareVersion(Z)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4935
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 4936
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4937
    return-object p0
.end method

.method public setRequestStorageInfo(Z)Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4897
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 4898
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    .line 4899
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5055
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5056
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5058
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5059
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5061
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5062
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestDeviceName_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5064
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5065
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5067
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5068
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5070
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 5071
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassInfoRequest;->requestScreenDimensions_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5073
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5074
    return-void
.end method
