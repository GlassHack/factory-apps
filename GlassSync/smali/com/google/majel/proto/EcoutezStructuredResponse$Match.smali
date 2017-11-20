.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Match"
.end annotation


# static fields
.field public static final MATCH_STATUS_BREAK:I = 0x9

.field public static final MATCH_STATUS_CANCELLED:I = 0x4

.field public static final MATCH_STATUS_DELAYED:I = 0x5

.field public static final MATCH_STATUS_DONE:I = 0x0

.field public static final MATCH_STATUS_IN_PROGRESS:I = 0x1

.field public static final MATCH_STATUS_NOT_STARTED:I = 0x2

.field public static final MATCH_STATUS_POSTPONED:I = 0x3

.field public static final MATCH_STATUS_SUSPENDED:I = 0x7

.field public static final MATCH_STATUS_TBD:I = 0x6

.field public static final MATCH_STATUS_WITHDRAWN:I = 0x8

.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;


# instance fields
.field public baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

.field private bitField0_:I

.field private boxUrl_:Ljava/lang/String;

.field private currentPeriodNum_:I

.field private dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

.field private dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

.field private firstIsWinner_:Z

.field private firstScore_:Ljava/lang/String;

.field public firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

.field private firstTeamShortName_:Ljava/lang/String;

.field private firstTeam_:Ljava/lang/String;

.field private forumUrl_:Ljava/lang/String;

.field private isHiddenSecondary_:Z

.field private isHidden_:Z

.field private liveStreamUrl_:Ljava/lang/String;

.field private liveUpdateUrl_:Ljava/lang/String;

.field public period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

.field private previewUrl_:Ljava/lang/String;

.field private recapUrl_:Ljava/lang/String;

.field private secondIsWinner_:Z

.field private secondScore_:Ljava/lang/String;

.field public secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

.field private secondTeamShortName_:Ljava/lang/String;

.field private secondTeam_:Ljava/lang/String;

.field private startTime_:Ljava/lang/String;

.field private startTimestamp_:J

.field private status_:I

.field private ticketsUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9030
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9031
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 9032
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 8520
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-nez v0, :cond_1

    .line 8521
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8523
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    if-nez v0, :cond_0

    .line 8524
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    .line 8526
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8528
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    return-object v0

    .line 8526
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9461
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9455
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 9035
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 9036
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    .line 9037
    iput-boolean v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    .line 9038
    iput-boolean v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    .line 9039
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    .line 9040
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    .line 9041
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    .line 9042
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    .line 9043
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    .line 9044
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 9045
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 9046
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    .line 9047
    iput-boolean v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    .line 9048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    .line 9049
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    .line 9050
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 9051
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 9052
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    .line 9053
    iput-boolean v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    .line 9054
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    .line 9055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    .line 9056
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    .line 9057
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    .line 9058
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    .line 9059
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    .line 9060
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    .line 9061
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 9062
    iput-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 9063
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->cachedSize:I

    .line 9064
    return-object p0
.end method

.method public clearBoxUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 8909
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    .line 8910
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8911
    return-object p0
.end method

.method public clearCurrentPeriodNum()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8645
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    .line 8646
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8647
    return-object p0
.end method

.method public clearDEPRECATEDFirstTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8711
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 8712
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8713
    return-object p0
.end method

.method public clearDEPRECATEDSecondTeamLogoUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8821
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 8822
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8823
    return-object p0
.end method

.method public clearFirstIsWinner()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    .line 8756
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8757
    return-object p0
.end method

.method public clearFirstScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8736
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    .line 8737
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8738
    return-object p0
.end method

.method public clearFirstTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    .line 8668
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8669
    return-object p0
.end method

.method public clearFirstTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    .line 8690
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8691
    return-object p0
.end method

.method public clearForumUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 9019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    .line 9020
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 9021
    return-object p0
.end method

.method public clearIsHidden()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    .line 8567
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8568
    return-object p0
.end method

.method public clearIsHiddenSecondary()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    .line 8586
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8587
    return-object p0
.end method

.method public clearLiveStreamUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 8953
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    .line 8954
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8955
    return-object p0
.end method

.method public clearLiveUpdateUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 8931
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    .line 8932
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8933
    return-object p0
.end method

.method public clearPreviewUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 8975
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    .line 8976
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8977
    return-object p0
.end method

.method public clearRecapUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 8887
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    .line 8888
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8889
    return-object p0
.end method

.method public clearSecondIsWinner()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 8865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    .line 8866
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8867
    return-object p0
.end method

.method public clearSecondScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8846
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    .line 8847
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8848
    return-object p0
.end method

.method public clearSecondTeam()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8777
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    .line 8778
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8779
    return-object p0
.end method

.method public clearSecondTeamShortName()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8799
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    .line 8800
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8801
    return-object p0
.end method

.method public clearStartTime()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8626
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    .line 8627
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8628
    return-object p0
.end method

.method public clearStartTimestamp()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 8604
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    .line 8605
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8606
    return-object p0
.end method

.method public clearStatus()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1

    .prologue
    .line 8547
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    .line 8548
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8549
    return-object p0
.end method

.method public clearTicketsUrl()Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2

    .prologue
    .line 8997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    .line 8998
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8999
    return-object p0
.end method

.method public getBoxUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8895
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPeriodNum()I
    .locals 1

    .prologue
    .line 8634
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    return v0
.end method

.method public getDEPRECATEDFirstTeamLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8697
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDSecondTeamLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8807
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstIsWinner()Z
    .locals 1

    .prologue
    .line 8744
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    return v0
.end method

.method public getFirstScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8722
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8653
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstTeamShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8675
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    return-object v0
.end method

.method public getForumUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9005
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHidden()Z
    .locals 1

    .prologue
    .line 8555
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    return v0
.end method

.method public getIsHiddenSecondary()Z
    .locals 1

    .prologue
    .line 8574
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    return v0
.end method

.method public getLiveStreamUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8939
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8917
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8961
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecapUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8873
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondIsWinner()Z
    .locals 1

    .prologue
    .line 8854
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    return v0
.end method

.method public getSecondScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8832
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTeam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8763
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTeamShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8785
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 9160
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 9161
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 9162
    const/4 v3, 0x1

    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 9165
    :cond_0
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 9166
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9169
    :cond_1
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 9170
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9173
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    .line 9174
    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    invoke-static {v3, v4, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9177
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    .line 9178
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9181
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    .line 9182
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 9185
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    .line 9186
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9189
    :cond_6
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_7

    .line 9190
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9193
    :cond_7
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_8

    .line 9194
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9197
    :cond_8
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_9

    .line 9198
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9201
    :cond_9
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_a

    .line 9202
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9205
    :cond_a
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    .line 9206
    const/16 v3, 0xc

    iget-boolean v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 9209
    :cond_b
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    .line 9210
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9213
    :cond_c
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_d

    .line 9214
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9217
    :cond_d
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_e

    .line 9218
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9221
    :cond_e
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_f

    .line 9222
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9225
    :cond_f
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    array-length v3, v3

    if-lez v3, :cond_11

    .line 9226
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    array-length v3, v3

    if-ge v1, v3, :cond_11

    .line 9227
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    aget-object v0, v3, v1

    .line 9228
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    if-eqz v0, :cond_10

    .line 9229
    const/16 v3, 0x11

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9226
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9234
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .end local v1    # "i":I
    :cond_11
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    if-eqz v3, :cond_12

    .line 9235
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9238
    :cond_12
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_13

    .line 9239
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9242
    :cond_13
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_14

    .line 9243
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9246
    :cond_14
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-eqz v3, :cond_15

    .line 9247
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9250
    :cond_15
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-eqz v3, :cond_16

    .line 9251
    const/16 v3, 0x16

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9254
    :cond_16
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_17

    .line 9255
    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9258
    :cond_17
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_18

    .line 9259
    const/16 v3, 0x18

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9262
    :cond_18
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_19

    .line 9263
    const/16 v3, 0x19

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9266
    :cond_19
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    .line 9267
    const/16 v3, 0x1a

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9270
    :cond_1a
    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1b

    .line 9271
    const/16 v3, 0x1b

    iget-object v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9274
    :cond_1b
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->cachedSize:I

    .line 9275
    return v2
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8612
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimestamp()J
    .locals 2

    .prologue
    .line 8593
    iget-wide v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 8536
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    return v0
.end method

.method public getTicketsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8983
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBoxUrl()Z
    .locals 2

    .prologue
    .line 8906
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCurrentPeriodNum()Z
    .locals 1

    .prologue
    .line 8642
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDEPRECATEDFirstTeamLogoUrl()Z
    .locals 1

    .prologue
    .line 8708
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

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
    .line 8818
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstIsWinner()Z
    .locals 1

    .prologue
    .line 8752
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstScore()Z
    .locals 1

    .prologue
    .line 8733
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

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
    .line 8664
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 8686
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasForumUrl()Z
    .locals 2

    .prologue
    .line 9016
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsHidden()Z
    .locals 1

    .prologue
    .line 8563
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsHiddenSecondary()Z
    .locals 1

    .prologue
    .line 8582
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLiveStreamUrl()Z
    .locals 2

    .prologue
    .line 8950
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLiveUpdateUrl()Z
    .locals 2

    .prologue
    .line 8928
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviewUrl()Z
    .locals 2

    .prologue
    .line 8972
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecapUrl()Z
    .locals 2

    .prologue
    .line 8884
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondIsWinner()Z
    .locals 2

    .prologue
    .line 8862
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondScore()Z
    .locals 1

    .prologue
    .line 8843
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

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
    .line 8774
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

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
    .line 8796
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartTime()Z
    .locals 1

    .prologue
    .line 8623
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartTimestamp()Z
    .locals 1

    .prologue
    .line 8601
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 8544
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTicketsUrl()Z
    .locals 2

    .prologue
    .line 8994
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

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
    .line 8502
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 7
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 9283
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 9284
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 9288
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 9289
    :sswitch_0
    return-object p0

    .line 9294
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    .line 9295
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto :goto_0

    .line 9299
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    .line 9300
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto :goto_0

    .line 9304
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    .line 9305
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto :goto_0

    .line 9309
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    .line 9310
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto :goto_0

    .line 9314
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    .line 9315
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto :goto_0

    .line 9319
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    .line 9320
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto :goto_0

    .line 9324
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    .line 9325
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto :goto_0

    .line 9329
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    .line 9330
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto :goto_0

    .line 9334
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    .line 9335
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9339
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    .line 9340
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9344
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    .line 9345
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9349
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    .line 9350
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9354
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    .line 9355
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9359
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    .line 9360
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9364
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    .line 9365
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9369
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    .line 9370
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9374
    :sswitch_11
    const/16 v5, 0x8a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9376
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    if-nez v5, :cond_2

    move v1, v4

    .line 9377
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 9379
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    if-eqz v1, :cond_1

    .line 9380
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9382
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 9383
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;-><init>()V

    aput-object v5, v2, v1

    .line 9384
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9385
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9382
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9376
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    array-length v1, v5

    goto :goto_1

    .line 9388
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;-><init>()V

    aput-object v5, v2, v1

    .line 9389
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9390
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    goto/16 :goto_0

    .line 9394
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    :sswitch_12
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    if-nez v5, :cond_4

    .line 9395
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 9397
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9401
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 9402
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9406
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 9407
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9411
    :sswitch_15
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-nez v5, :cond_5

    .line 9412
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 9414
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9418
    :sswitch_16
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-nez v5, :cond_6

    .line 9419
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    .line 9421
    :cond_6
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9425
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    .line 9426
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9430
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    .line 9431
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9435
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    .line 9436
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9440
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    .line 9441
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9445
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    .line 9446
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    goto/16 :goto_0

    .line 9284
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
    .end sparse-switch
.end method

.method public setBoxUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8898
    if-nez p1, :cond_0

    .line 8899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8901
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    .line 8902
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8903
    return-object p0
.end method

.method public setCurrentPeriodNum(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8637
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    .line 8638
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8639
    return-object p0
.end method

.method public setDEPRECATEDFirstTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8700
    if-nez p1, :cond_0

    .line 8701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8703
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    .line 8704
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8705
    return-object p0
.end method

.method public setDEPRECATEDSecondTeamLogoUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8810
    if-nez p1, :cond_0

    .line 8811
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8813
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    .line 8814
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8815
    return-object p0
.end method

.method public setFirstIsWinner(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 8747
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    .line 8748
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8749
    return-object p0
.end method

.method public setFirstScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8725
    if-nez p1, :cond_0

    .line 8726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8728
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    .line 8729
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8730
    return-object p0
.end method

.method public setFirstTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8656
    if-nez p1, :cond_0

    .line 8657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8659
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    .line 8660
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8661
    return-object p0
.end method

.method public setFirstTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8678
    if-nez p1, :cond_0

    .line 8679
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8681
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    .line 8682
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8683
    return-object p0
.end method

.method public setForumUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9008
    if-nez p1, :cond_0

    .line 9009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9011
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    .line 9012
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 9013
    return-object p0
.end method

.method public setIsHidden(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 8558
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    .line 8559
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8560
    return-object p0
.end method

.method public setIsHiddenSecondary(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 8577
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    .line 8578
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8579
    return-object p0
.end method

.method public setLiveStreamUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8942
    if-nez p1, :cond_0

    .line 8943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8945
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    .line 8946
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8947
    return-object p0
.end method

.method public setLiveUpdateUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8920
    if-nez p1, :cond_0

    .line 8921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8923
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    .line 8924
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8925
    return-object p0
.end method

.method public setPreviewUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8964
    if-nez p1, :cond_0

    .line 8965
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8967
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    .line 8968
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8969
    return-object p0
.end method

.method public setRecapUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8876
    if-nez p1, :cond_0

    .line 8877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8879
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    .line 8880
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8881
    return-object p0
.end method

.method public setSecondIsWinner(Z)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 8857
    iput-boolean p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    .line 8858
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8859
    return-object p0
.end method

.method public setSecondScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8835
    if-nez p1, :cond_0

    .line 8836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8838
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    .line 8839
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8840
    return-object p0
.end method

.method public setSecondTeam(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8766
    if-nez p1, :cond_0

    .line 8767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8769
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    .line 8770
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8771
    return-object p0
.end method

.method public setSecondTeamShortName(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8788
    if-nez p1, :cond_0

    .line 8789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8791
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    .line 8792
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8793
    return-object p0
.end method

.method public setStartTime(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8615
    if-nez p1, :cond_0

    .line 8616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8618
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    .line 8619
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8620
    return-object p0
.end method

.method public setStartTimestamp(J)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 8596
    iput-wide p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    .line 8597
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8598
    return-object p0
.end method

.method public setStatus(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8539
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    .line 8540
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8541
    return-object p0
.end method

.method public setTicketsUrl(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Match;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8986
    if-nez p1, :cond_0

    .line 8987
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8989
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    .line 8990
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    .line 8991
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9070
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 9071
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->status_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9073
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 9074
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHidden_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9076
    :cond_1
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 9077
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->isHiddenSecondary_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9079
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 9080
    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTimestamp_:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9082
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 9083
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->startTime_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9085
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 9086
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->currentPeriodNum_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9088
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 9089
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeam_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9091
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_7

    .line 9092
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstScore_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9094
    :cond_7
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_8

    .line 9095
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstIsWinner_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9097
    :cond_8
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_9

    .line 9098
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeam_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9100
    :cond_9
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_a

    .line 9101
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondScore_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9103
    :cond_a
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 9104
    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondIsWinner_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9106
    :cond_b
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 9107
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->recapUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9109
    :cond_c
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    .line 9110
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->boxUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9112
    :cond_d
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 9113
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->previewUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9115
    :cond_e
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    .line 9116
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->ticketsUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9118
    :cond_f
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    array-length v2, v2

    if-lez v2, :cond_11

    .line 9119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    .line 9120
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->period:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    aget-object v0, v2, v1

    .line 9121
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    if-eqz v0, :cond_10

    .line 9122
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9119
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9126
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .end local v1    # "i":I
    :cond_11
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    if-eqz v2, :cond_12

    .line 9127
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9129
    :cond_12
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_13

    .line 9130
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDFirstTeamLogoUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9132
    :cond_13
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_14

    .line 9133
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->dEPRECATEDSecondTeamLogoUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9135
    :cond_14
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-eqz v2, :cond_15

    .line 9136
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9138
    :cond_15
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    if-eqz v2, :cond_16

    .line 9139
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamLogo:Lcom/google/majel/proto/EcoutezStructuredResponse$Logo;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 9141
    :cond_16
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_17

    .line 9142
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->secondTeamShortName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9144
    :cond_17
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_18

    .line 9145
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->firstTeamShortName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9147
    :cond_18
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 9148
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveUpdateUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9150
    :cond_19
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    .line 9151
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->liveStreamUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9153
    :cond_1a
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1b

    .line 9154
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Match;->forumUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9156
    :cond_1b
    return-void
.end method
