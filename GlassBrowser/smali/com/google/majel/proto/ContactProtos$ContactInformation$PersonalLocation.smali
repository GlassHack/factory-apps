.class public final Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContactProtos$ContactInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PersonalLocation"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;


# instance fields
.field public contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

.field public inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

.field public value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1054
    invoke-virtual {p0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->clear()Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    .line 1055
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    .locals 2

    .prologue
    .line 1033
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    if-nez v0, :cond_1

    .line 1034
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1036
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    if-nez v0, :cond_0

    .line 1037
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    sput-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    .line 1039
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    return-object v0

    .line 1039
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1146
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1140
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1058
    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 1059
    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 1060
    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    .line 1061
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->cachedSize:I

    .line 1062
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1081
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1082
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-eqz v1, :cond_0

    .line 1083
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    if-eqz v1, :cond_1

    .line 1087
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1090
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    if-eqz v1, :cond_2

    .line 1091
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1094
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->cachedSize:I

    .line 1095
    return v0
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
    .line 1027
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1104
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1108
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1109
    :sswitch_0
    return-object p0

    .line 1114
    :sswitch_1
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-nez v1, :cond_1

    .line 1115
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    .line 1117
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1121
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    if-nez v1, :cond_2

    .line 1122
    new-instance v1, Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-direct {v1}, Lcom/google/majel/proto/ContactProtos$ContactType;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    .line 1124
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1128
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    if-nez v1, :cond_3

    .line 1129
    new-instance v1, Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    invoke-direct {v1}, Lcom/google/majel/proto/ContactProtos$InferenceDetails;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    .line 1131
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1104
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
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
    .line 1068
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    if-eqz v0, :cond_0

    .line 1069
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->value:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    if-eqz v0, :cond_1

    .line 1072
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->contactType:Lcom/google/majel/proto/ContactProtos$ContactType;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1074
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    if-eqz v0, :cond_2

    .line 1075
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$PersonalLocation;->inferenceDetails:Lcom/google/majel/proto/ContactProtos$InferenceDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1077
    :cond_2
    return-void
.end method
