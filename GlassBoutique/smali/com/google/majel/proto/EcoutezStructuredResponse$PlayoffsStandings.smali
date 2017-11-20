.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayoffsStandings"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;


# instance fields
.field private bitField0_:I

.field private firstTeamWins_:I

.field private firstTeam_:Ljava/lang/String;

.field private secondTeamWins_:I

.field private secondTeam_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10011
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10012
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 10013
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 2

    .prologue
    .line 9916
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    if-nez v0, :cond_1

    .line 9917
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9919
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    if-nez v0, :cond_0

    .line 9920
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 9922
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9924
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    return-object v0

    .line 9922
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10112
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10106
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10016
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    .line 10017
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    .line 10018
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    .line 10019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    .line 10020
    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    .line 10021
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->cachedSize:I

    .line 10022
    return-object p0
.end method

.method public clearFirstTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1

    .prologue
    .line 9946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    .line 9947
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    .line 9948
    return-object p0
.end method

.method public clearFirstTeamWins()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1

    .prologue
    .line 9965
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    .line 9966
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    .line 9967
    return-object p0
.end method

.method public clearSecondTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1

    .prologue
    .line 9987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    .line 9988
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    .line 9989
    return-object p0
.end method

.method public clearSecondTeamWins()Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1

    .prologue
    .line 10006
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    .line 10007
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    .line 10008
    return-object p0
.end method

.method public getFirstTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9932
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTeamWins()I
    .locals 1

    .prologue
    .line 9954
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    return v0
.end method

.method public getSecondTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9973
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTeamWins()I
    .locals 1

    .prologue
    .line 9995
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10044
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10045
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10046
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10049
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 10050
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10053
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 10054
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10057
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 10058
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10061
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->cachedSize:I

    .line 10062
    return v0
.end method

.method public hasFirstTeam()Z
    .locals 1

    .prologue
    .line 9943
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstTeamWins()Z
    .locals 1

    .prologue
    .line 9962
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondTeam()Z
    .locals 1

    .prologue
    .line 9984
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondTeamWins()Z
    .locals 1

    .prologue
    .line 10003
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 9910
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10070
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10071
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10075
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10076
    :sswitch_0
    return-object p0

    .line 10081
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    .line 10082
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    goto :goto_0

    .line 10086
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    .line 10087
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    goto :goto_0

    .line 10091
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    .line 10092
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    goto :goto_0

    .line 10096
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    .line 10097
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    goto :goto_0

    .line 10071
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setFirstTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9935
    if-nez p1, :cond_0

    .line 9936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9938
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    .line 9939
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    .line 9940
    return-object p0
.end method

.method public setFirstTeamWins(I)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9957
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    .line 9958
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    .line 9959
    return-object p0
.end method

.method public setSecondTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9976
    if-nez p1, :cond_0

    .line 9977
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9979
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    .line 9980
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    .line 9981
    return-object p0
.end method

.method public setSecondTeamWins(I)Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9998
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    .line 9999
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    .line 10000
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
    .line 10028
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10029
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeam_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10031
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10032
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->firstTeamWins_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10034
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 10035
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeam_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10037
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 10038
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;->secondTeamWins_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10040
    :cond_3
    return-void
.end method
