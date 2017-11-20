.class public final Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContactProtos$ContactInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmailAddress"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;


# instance fields
.field private bitField0_:I

.field public contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

.field public inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 932
    invoke-virtual {p0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->clear()Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    .line 933
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    .locals 2

    .prologue
    .line 890
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    if-nez v0, :cond_1

    .line 891
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 893
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    if-nez v0, :cond_0

    .line 894
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    sput-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    .line 896
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    return-object v0

    .line 896
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1023
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1017
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->bitField0_:I

    .line 937
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->value_:Ljava/lang/String;

    .line 938
    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 939
    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    .line 940
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->cachedSize:I

    .line 941
    return-object p0
.end method

.method public clearValue()Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    .locals 1

    .prologue
    .line 920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->value_:Ljava/lang/String;

    .line 921
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->bitField0_:I

    .line 922
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 960
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 961
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 962
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 965
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    if-eqz v1, :cond_1

    .line 966
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 969
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    if-eqz v1, :cond_2

    .line 970
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 973
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->cachedSize:I

    .line 974
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->bitField0_:I

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
    .line 884
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 983
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 987
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 988
    :sswitch_0
    return-object p0

    .line 993
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->value_:Ljava/lang/String;

    .line 994
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->bitField0_:I

    goto :goto_0

    .line 998
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    if-nez v1, :cond_1

    .line 999
    new-instance v1, Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-direct {v1}, Lcom/google/majel/proto/ContactProtos$ContactType;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 1001
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1005
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    if-nez v1, :cond_2

    .line 1006
    new-instance v1, Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    invoke-direct {v1}, Lcom/google/majel/proto/ContactProtos$InferenceDetails;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    .line 1008
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 983
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 909
    if-nez p1, :cond_0

    .line 910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 912
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->value_:Ljava/lang/String;

    .line 913
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->bitField0_:I

    .line 914
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
    .line 947
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 948
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    if-eqz v0, :cond_1

    .line 951
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    if-eqz v0, :cond_2

    .line 954
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$EmailAddress;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 956
    :cond_2
    return-void
.end method
