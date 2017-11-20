.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TeamVsTeamData"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;


# instance fields
.field private bitField0_:I

.field private dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

.field private dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

.field public firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

.field private firstTeamShortName_:Ljava/lang/String;

.field private firstTeam_:Ljava/lang/String;

.field public matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

.field public secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

.field private secondTeamShortName_:Ljava/lang/String;

.field private secondTeam_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10704
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 10705
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 10706
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 2

    .prologue
    .line 10550
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    if-nez v0, :cond_1

    .line 10551
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10553
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    if-nez v0, :cond_0

    .line 10554
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    .line 10556
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10558
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    return-object v0

    .line 10556
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10876
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10870
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10709
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10710
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    .line 10711
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    .line 10712
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 10713
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 10714
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    .line 10715
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    .line 10716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 10717
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 10718
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 10719
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->cachedSize:I

    .line 10720
    return-object p0
.end method

.method public clearDEPRECATEDFirstTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 10624
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 10625
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10626
    return-object p0
.end method

.method public clearDEPRECATEDSecondTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 10693
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 10694
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10695
    return-object p0
.end method

.method public clearFirstTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 10580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    .line 10581
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10582
    return-object p0
.end method

.method public clearFirstTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 10602
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    .line 10603
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10604
    return-object p0
.end method

.method public clearSecondTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 10649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    .line 10650
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10651
    return-object p0
.end method

.method public clearSecondTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1

    .prologue
    .line 10671
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    .line 10672
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10673
    return-object p0
.end method

.method public getDEPRECATEDFirstTeamLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10610
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDSecondTeamLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10679
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10566
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTeamShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10588
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10635
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTeamShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10657
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10757
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 10758
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 10759
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10762
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 10763
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10766
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-eqz v1, :cond_2

    .line 10767
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10770
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 10771
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10774
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 10775
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10778
    :cond_4
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-eqz v1, :cond_5

    .line 10779
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10782
    :cond_5
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-eqz v1, :cond_6

    .line 10783
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10786
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 10787
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10790
    :cond_7
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 10791
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10794
    :cond_8
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->cachedSize:I

    .line 10795
    return v0
.end method

.method public hasDEPRECATEDFirstTeamLogoUrl()Z
    .locals 1

    .prologue
    .line 10621
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDEPRECATEDSecondTeamLogoUrl()Z
    .locals 1

    .prologue
    .line 10690
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstTeam()Z
    .locals 1

    .prologue
    .line 10577
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstTeamShortName()Z
    .locals 1

    .prologue
    .line 10599
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

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
    .line 10646
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondTeamShortName()Z
    .locals 1

    .prologue
    .line 10668
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 10544
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10803
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10804
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10808
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10809
    :sswitch_0
    return-object p0

    .line 10814
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    .line 10815
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    goto :goto_0

    .line 10819
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    .line 10820
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    goto :goto_0

    .line 10824
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-nez v1, :cond_1

    .line 10825
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    .line 10827
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10831
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 10832
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    goto :goto_0

    .line 10836
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 10837
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    goto :goto_0

    .line 10841
    :sswitch_6
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-nez v1, :cond_2

    .line 10842
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 10844
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10848
    :sswitch_7
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-nez v1, :cond_3

    .line 10849
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 10851
    :cond_3
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10855
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    .line 10856
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    goto/16 :goto_0

    .line 10860
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    .line 10861
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    goto/16 :goto_0

    .line 10804
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
    .end sparse-switch
.end method

.method public setDEPRECATEDFirstTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10613
    if-nez p1, :cond_0

    .line 10614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10616
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 10617
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10618
    return-object p0
.end method

.method public setDEPRECATEDSecondTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10682
    if-nez p1, :cond_0

    .line 10683
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10685
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 10686
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10687
    return-object p0
.end method

.method public setFirstTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10569
    if-nez p1, :cond_0

    .line 10570
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10572
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    .line 10573
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10574
    return-object p0
.end method

.method public setFirstTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10591
    if-nez p1, :cond_0

    .line 10592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10594
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    .line 10595
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10596
    return-object p0
.end method

.method public setSecondTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10638
    if-nez p1, :cond_0

    .line 10639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10641
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    .line 10642
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10643
    return-object p0
.end method

.method public setSecondTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10660
    if-nez p1, :cond_0

    .line 10661
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10663
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    .line 10664
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    .line 10665
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
    .line 10726
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10727
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeam_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10729
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 10730
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeam_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10732
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    if-eqz v0, :cond_2

    .line 10733
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->matchList:Lcom/google/majel/proto/EcoutezStructuredResponse$MatchList;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10735
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 10736
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10738
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 10739
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10741
    :cond_4
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-eqz v0, :cond_5

    .line 10742
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10744
    :cond_5
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-eqz v0, :cond_6

    .line 10745
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10747
    :cond_6
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 10748
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->firstTeamShortName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10750
    :cond_7
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 10751
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$TeamVsTeamData;->secondTeamShortName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10753
    :cond_8
    return-void
.end method
