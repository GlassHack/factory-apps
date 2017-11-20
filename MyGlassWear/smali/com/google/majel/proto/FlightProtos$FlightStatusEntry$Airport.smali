.class public final Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "FlightProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/FlightProtos$FlightStatusEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Airport"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;


# instance fields
.field private bitField0_:I

.field private code_:Ljava/lang/String;

.field private userAtAirport_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->clear()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    .line 73
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-nez v0, :cond_1

    .line 18
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    sput-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->_emptyArray:[Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-direct {v0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    invoke-direct {v0}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->code_:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->userAtAirport_:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->cachedSize:I

    .line 80
    return-object p0
.end method

.method public clearCode()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->code_:Ljava/lang/String;

    .line 48
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    .line 49
    return-object p0
.end method

.method public clearUserAtAirport()Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->userAtAirport_:Z

    .line 67
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->code_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 97
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->code_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 102
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->userAtAirport_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->cachedSize:I

    .line 106
    return v0
.end method

.method public getUserAtAirport()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->userAtAirport_:Z

    return v0
.end method

.method public hasCode()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAtAirport()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

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
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 115
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 119
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :sswitch_0
    return-object p0

    .line 125
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->code_:Ljava/lang/String;

    .line 126
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    goto :goto_0

    .line 130
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->userAtAirport_:Z

    .line 131
    iget v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCode(Ljava/lang/String;)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->code_:Ljava/lang/String;

    .line 40
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    .line 41
    return-object p0
.end method

.method public setUserAtAirport(Z)Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->userAtAirport_:Z

    .line 59
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    .line 60
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
    .line 86
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->code_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 89
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/majel/proto/FlightProtos$FlightStatusEntry$Airport;->userAtAirport_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 92
    :cond_1
    return-void
.end method
