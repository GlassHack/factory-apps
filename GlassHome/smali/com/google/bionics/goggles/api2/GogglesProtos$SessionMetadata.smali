.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionMetadata"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;


# instance fields
.field private bitField0_:I

.field private sessionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 897
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 898
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    .line 899
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 2

    .prologue
    .line 862
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    if-nez v0, :cond_1

    .line 863
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 865
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    if-nez v0, :cond_0

    .line 866
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    .line 868
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    return-object v0

    .line 868
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 959
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 953
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->bitField0_:I

    .line 903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    .line 904
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->cachedSize:I

    .line 905
    return-object p0
.end method

.method public clearSessionId()Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1

    .prologue
    .line 892
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    .line 893
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->bitField0_:I

    .line 894
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 918
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 919
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 920
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 923
    :cond_0
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->cachedSize:I

    .line 924
    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 932
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 933
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 937
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 938
    :sswitch_0
    return-object p0

    .line 943
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    .line 944
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->bitField0_:I

    goto :goto_0

    .line 933
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
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
    .line 856
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 881
    if-nez p1, :cond_0

    .line 882
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 884
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    .line 885
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->bitField0_:I

    .line 886
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
    .line 911
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 912
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$SessionMetadata;->sessionId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 914
    :cond_0
    return-void
.end method
