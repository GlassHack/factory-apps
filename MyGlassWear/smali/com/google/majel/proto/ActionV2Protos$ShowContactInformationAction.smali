.class public final Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShowContactInformationAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;


# instance fields
.field private bitField0_:I

.field public contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

.field public contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

.field private hasMoonshineContactResults_:Z

.field private showEmail_:Z

.field private showPhone_:Z

.field private showPostalAddress_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11005
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11006
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->clear()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    .line 11007
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 2

    .prologue
    .line 10910
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    if-nez v0, :cond_1

    .line 10911
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10913
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    if-nez v0, :cond_0

    .line 10914
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    .line 10916
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10918
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    return-object v0

    .line 10916
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11159
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11153
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11010
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    .line 11011
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 11012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 11013
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    .line 11014
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    .line 11015
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    .line 11016
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    .line 11017
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->cachedSize:I

    .line 11018
    return-object p0
.end method

.method public clearHasMoonshineContactResults()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1

    .prologue
    .line 11000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    .line 11001
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    .line 11002
    return-object p0
.end method

.method public clearShowEmail()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1

    .prologue
    .line 10962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    .line 10963
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    .line 10964
    return-object p0
.end method

.method public clearShowPhone()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1

    .prologue
    .line 10943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    .line 10944
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    .line 10945
    return-object p0
.end method

.method public clearShowPostalAddress()Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1

    .prologue
    .line 10981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    .line 10982
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    .line 10983
    return-object p0
.end method

.method public getHasMoonshineContactResults()Z
    .locals 1

    .prologue
    .line 10989
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 11051
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 11052
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 11053
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 11054
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    aget-object v0, v3, v1

    .line 11055
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    if-eqz v0, :cond_0

    .line 11056
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 11053
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11061
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .end local v1    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 11062
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 11065
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 11066
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 11069
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 11070
    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 11073
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 11074
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 11077
    :cond_5
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-eqz v3, :cond_6

    .line 11078
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 11081
    :cond_6
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->cachedSize:I

    .line 11082
    return v2
.end method

.method public getShowEmail()Z
    .locals 1

    .prologue
    .line 10951
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    return v0
.end method

.method public getShowPhone()Z
    .locals 1

    .prologue
    .line 10932
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    return v0
.end method

.method public getShowPostalAddress()Z
    .locals 1

    .prologue
    .line 10970
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    return v0
.end method

.method public hasHasMoonshineContactResults()Z
    .locals 1

    .prologue
    .line 10997
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShowEmail()Z
    .locals 1

    .prologue
    .line 10959
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShowPhone()Z
    .locals 1

    .prologue
    .line 10940
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShowPostalAddress()Z
    .locals 1

    .prologue
    .line 10978
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

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
    .line 10904
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 11090
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 11091
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 11095
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11096
    :sswitch_0
    return-object p0

    .line 11101
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 11103
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-nez v5, :cond_2

    move v1, v4

    .line 11104
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 11106
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    if-eqz v1, :cond_1

    .line 11107
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11109
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 11110
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    aput-object v5, v2, v1

    .line 11111
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11112
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 11109
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11103
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v1, v5

    goto :goto_1

    .line 11115
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    aput-object v5, v2, v1

    .line 11116
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11117
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    goto :goto_0

    .line 11121
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    .line 11122
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    goto :goto_0

    .line 11126
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    .line 11127
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    goto :goto_0

    .line 11131
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    .line 11132
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    goto :goto_0

    .line 11136
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    .line 11137
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    goto/16 :goto_0

    .line 11141
    :sswitch_6
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-nez v5, :cond_4

    .line 11142
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactReference;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 11144
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 11091
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setHasMoonshineContactResults(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 10992
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    .line 10993
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    .line 10994
    return-object p0
.end method

.method public setShowEmail(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 10954
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    .line 10955
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    .line 10956
    return-object p0
.end method

.method public setShowPhone(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 10935
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    .line 10936
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    .line 10937
    return-object p0
.end method

.method public setShowPostalAddress(Z)Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 10973
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    .line 10974
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    .line 10975
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
    .line 11024
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 11025
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 11026
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    aget-object v0, v2, v1

    .line 11027
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    if-eqz v0, :cond_0

    .line 11028
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11025
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11032
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .end local v1    # "i":I
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 11033
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPhone_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11035
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 11036
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showEmail_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11038
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 11039
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->showPostalAddress_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11041
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 11042
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->hasMoonshineContactResults_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11044
    :cond_5
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-eqz v2, :cond_6

    .line 11045
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ShowContactInformationAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 11047
    :cond_6
    return-void
.end method
