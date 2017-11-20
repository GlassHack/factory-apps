.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TeamData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;


# instance fields
.field private bitField0_:I

.field private dEPRECATEDLogoUrl_:Ljava/lang/String;

.field public inProgressMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

.field public lastMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

.field public logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

.field public matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

.field private name_:Ljava/lang/String;

.field public nextMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

.field public playoffsStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

.field public regularSeasonStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

.field private shortName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10222
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10223
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 10224
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 2

    .prologue
    .line 10122
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    if-nez v0, :cond_1

    .line 10123
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10125
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    if-nez v0, :cond_0

    .line 10126
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    .line 10128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10130
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    return-object v0

    .line 10128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10415
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10409
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10227
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    .line 10228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    .line 10229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    .line 10230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    .line 10231
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 10232
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 10233
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 10234
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 10235
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 10236
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 10237
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 10238
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->cachedSize:I

    .line 10239
    return-object p0
.end method

.method public clearDEPRECATEDLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 10196
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    .line 10197
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    .line 10198
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 10152
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    .line 10153
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    .line 10154
    return-object p0
.end method

.method public clearShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1

    .prologue
    .line 10174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    .line 10175
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    .line 10176
    return-object p0
.end method

.method public getDEPRECATEDLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10182
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10138
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10279
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10280
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10281
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10284
    :cond_0
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    if-eqz v1, :cond_1

    .line 10285
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10288
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    if-eqz v1, :cond_2

    .line 10289
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10292
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-eqz v1, :cond_3

    .line 10293
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10296
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-eqz v1, :cond_4

    .line 10297
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10300
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-eqz v1, :cond_5

    .line 10301
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10304
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-eqz v1, :cond_6

    .line 10305
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10308
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 10309
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10312
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-eqz v1, :cond_8

    .line 10313
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10316
    :cond_8
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 10317
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10320
    :cond_9
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->cachedSize:I

    .line 10321
    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10160
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDEPRECATEDLogoUrl()Z
    .locals 1

    .prologue
    .line 10193
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 10149
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShortName()Z
    .locals 1

    .prologue
    .line 10171
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

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
    .line 10116
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10329
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10330
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10334
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10335
    :sswitch_0
    return-object p0

    .line 10340
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    .line 10341
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    goto :goto_0

    .line 10345
    :sswitch_2
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    if-nez v1, :cond_1

    .line 10346
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    .line 10348
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10352
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    if-nez v1, :cond_2

    .line 10353
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    .line 10355
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10359
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-nez v1, :cond_3

    .line 10360
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 10362
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10366
    :sswitch_5
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-nez v1, :cond_4

    .line 10367
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 10369
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10373
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-nez v1, :cond_5

    .line 10374
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 10376
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10380
    :sswitch_7
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-nez v1, :cond_6

    .line 10381
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 10383
    :cond_6
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10387
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    .line 10388
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    goto/16 :goto_0

    .line 10392
    :sswitch_9
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-nez v1, :cond_7

    .line 10393
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 10395
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 10399
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    .line 10400
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    goto/16 :goto_0

    .line 10330
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public setDEPRECATEDLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10185
    if-nez p1, :cond_0

    .line 10186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10188
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    .line 10189
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    .line 10190
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10141
    if-nez p1, :cond_0

    .line 10142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10144
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    .line 10145
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    .line 10146
    return-object p0
.end method

.method public setShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10163
    if-nez p1, :cond_0

    .line 10164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10166
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    .line 10167
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    .line 10168
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
    .line 10245
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10246
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10248
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    if-eqz v0, :cond_1

    .line 10249
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->regularSeasonStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$RegularSeasonStandings;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10251
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    if-eqz v0, :cond_2

    .line 10252
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->playoffsStandings:Lcom/google/majel/proto/EcoutezStructuredResponse$PlayoffsStandings;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10254
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-eqz v0, :cond_3

    .line 10255
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10257
    :cond_3
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-eqz v0, :cond_4

    .line 10258
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->lastMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10260
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-eqz v0, :cond_5

    .line 10261
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->nextMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10263
    :cond_5
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-eqz v0, :cond_6

    .line 10264
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->inProgressMatch:Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10266
    :cond_6
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 10267
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->dEPRECATEDLogoUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10269
    :cond_7
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-eqz v0, :cond_8

    .line 10270
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->logo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10272
    :cond_8
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 10273
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamData;->shortName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10275
    :cond_9
    return-void
.end method
