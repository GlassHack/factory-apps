.class public final Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PhoneAction;


# instance fields
.field public contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

.field public contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3978
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3979
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->clear()Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    .line 3980
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 2

    .prologue
    .line 3961
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    if-nez v0, :cond_1

    .line 3962
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3964
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    if-nez v0, :cond_0

    .line 3965
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    .line 3967
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3969
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    return-object v0

    .line 3967
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4079
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4073
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 1

    .prologue
    .line 3983
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 3984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 3985
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->cachedSize:I

    .line 3986
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 4007
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 4008
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 4009
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 4010
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    aget-object v0, v3, v1

    .line 4011
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    if-eqz v0, :cond_0

    .line 4012
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4009
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4017
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-eqz v3, :cond_2

    .line 4018
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 4021
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->cachedSize:I

    .line 4022
    return v2
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
    .line 3955
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$PhoneAction;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4030
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4031
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4035
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4036
    :sswitch_0
    return-object p0

    .line 4041
    :sswitch_1
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4043
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-nez v5, :cond_2

    move v1, v4

    .line 4044
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 4046
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    if-eqz v1, :cond_1

    .line 4047
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4049
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 4050
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    aput-object v5, v2, v1

    .line 4051
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4052
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4049
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4043
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v1, v5

    goto :goto_1

    .line 4055
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    aput-object v5, v2, v1

    .line 4056
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4057
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    goto :goto_0

    .line 4061
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :sswitch_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-nez v5, :cond_4

    .line 4062
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactReference;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 4064
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4031
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
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
    .line 3992
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 3993
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3994
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    aget-object v0, v2, v1

    .line 3995
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    if-eqz v0, :cond_0

    .line 3996
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3993
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4000
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-eqz v2, :cond_2

    .line 4001
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$PhoneAction;->contactCr:Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 4003
    :cond_2
    return-void
.end method
