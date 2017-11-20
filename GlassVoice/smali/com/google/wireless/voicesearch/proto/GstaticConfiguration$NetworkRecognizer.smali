.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkRecognizer"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;


# instance fields
.field private bitField0_:I

.field private maxRetries_:I

.field private maxRetryTimeoutMsec_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1081
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    .line 1082
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 2

    .prologue
    .line 1029
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    if-nez v0, :cond_1

    .line 1030
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1032
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    if-nez v0, :cond_0

    .line 1033
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    .line 1035
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    return-object v0

    .line 1035
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1155
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1149
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1085
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    .line 1086
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    .line 1087
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    .line 1088
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->cachedSize:I

    .line 1089
    return-object p0
.end method

.method public clearMaxRetries()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    .line 1057
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    .line 1058
    return-object p0
.end method

.method public clearMaxRetryTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    .line 1076
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    .line 1077
    return-object p0
.end method

.method public getMaxRetries()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    return v0
.end method

.method public getMaxRetryTimeoutMsec()I
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1105
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1106
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1107
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1110
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1111
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1114
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->cachedSize:I

    .line 1115
    return v0
.end method

.method public hasMaxRetries()Z
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxRetryTimeoutMsec()Z
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

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
    .line 1023
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1124
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1128
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1129
    :sswitch_0
    return-object p0

    .line 1134
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    .line 1135
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    goto :goto_0

    .line 1139
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    .line 1140
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    goto :goto_0

    .line 1124
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setMaxRetries(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1048
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    .line 1049
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    .line 1050
    return-object p0
.end method

.method public setMaxRetryTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1067
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    .line 1068
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    .line 1069
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
    .line 1095
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1096
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetries_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1098
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1099
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$NetworkRecognizer;->maxRetryTimeoutMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1101
    :cond_1
    return-void
.end method
