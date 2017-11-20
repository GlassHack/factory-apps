.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportsResult"
.end annotation


# static fields
.field public static final SPORT_TYPE_BASEBALL:I = 0x1

.field public static final SPORT_TYPE_BASKETBALL:I = 0x5

.field public static final SPORT_TYPE_CRICKET:I = 0x7

.field public static final SPORT_TYPE_FOOTBALL:I = 0x3

.field public static final SPORT_TYPE_GOLF:I = 0xa

.field public static final SPORT_TYPE_MOTOR_RACING:I = 0x8

.field public static final SPORT_TYPE_OLYMPIC_SPORT:I = 0x9

.field public static final SPORT_TYPE_RUGBY:I = 0x6

.field public static final SPORT_TYPE_SOCCER:I = 0x4

.field public static final SPORT_TYPE_TENNIS:I = 0x2

.field public static final SPORT_TYPE_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;


# instance fields
.field public associationData:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

.field private bitField0_:I

.field private sportType_:I

.field public teamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

.field public teamVsTeamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10962
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10963
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 10964
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 2

    .prologue
    .line 10899
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    if-nez v0, :cond_1

    .line 10900
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10902
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    if-nez v0, :cond_0

    .line 10903
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    .line 10905
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10907
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    return-object v0

    .line 10905
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11082
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11076
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10967
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    .line 10968
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    .line 10969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    .line 10970
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 10971
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 10972
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    .line 10973
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->cachedSize:I

    .line 10974
    return-object p0
.end method

.method public clearSportType()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1

    .prologue
    .line 10926
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    .line 10927
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    .line 10928
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1

    .prologue
    .line 10948
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    .line 10949
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    .line 10950
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10999
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11000
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11001
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11004
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11005
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11008
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    if-eqz v1, :cond_2

    .line 11009
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11012
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    if-eqz v1, :cond_3

    .line 11013
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11016
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    if-eqz v1, :cond_4

    .line 11017
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11020
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->cachedSize:I

    .line 11021
    return v0
.end method

.method public getSportType()I
    .locals 1

    .prologue
    .line 10915
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10934
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSportType()Z
    .locals 1

    .prologue
    .line 10923
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 10945
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

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
    .line 10880
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11029
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11030
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11034
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11035
    :sswitch_0
    return-object p0

    .line 11040
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    .line 11041
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    goto :goto_0

    .line 11045
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    .line 11046
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    goto :goto_0

    .line 11050
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    if-nez v1, :cond_1

    .line 11051
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 11053
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11057
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    if-nez v1, :cond_2

    .line 11058
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 11060
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11064
    :sswitch_5
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    if-nez v1, :cond_3

    .line 11065
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    .line 11067
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11030
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setSportType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 10918
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    .line 10919
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    .line 10920
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10937
    if-nez p1, :cond_0

    .line 10938
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10940
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    .line 10941
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    .line 10942
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
    .line 10980
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10981
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->sportType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10983
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10984
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->title_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10986
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    if-eqz v0, :cond_2

    .line 10987
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10989
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    if-eqz v0, :cond_3

    .line 10990
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->teamVsTeamData:Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10992
    :cond_3
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    if-eqz v0, :cond_4

    .line 10993
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SportsResult;->associationData:Lcom/google/majel/proto/EcoutezStructuredResponse$AssociationData;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10995
    :cond_4
    return-void
.end method
