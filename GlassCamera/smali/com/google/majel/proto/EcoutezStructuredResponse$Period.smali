.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# static fields
.field public static final PERIOD_STATUS_ABOUT_TO_START:I = 0x0

.field public static final PERIOD_STATUS_ENDED:I = 0x2

.field public static final PERIOD_STATUS_IN_PROGRESS:I = 0x1

.field public static final PERIOD_TYPE_NEXT_SCORE_WINS:I = 0x3

.field public static final PERIOD_TYPE_OVERTIME:I = 0x1

.field public static final PERIOD_TYPE_REGULAR:I = 0x0

.field public static final PERIOD_TYPE_SHOOTOUTS:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;


# instance fields
.field public baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

.field private bitField0_:I

.field private firstTeamScore_:Ljava/lang/String;

.field private maxNumber_:I

.field private minutes_:Ljava/lang/String;

.field private number_:I

.field private secondTeamScore_:Ljava/lang/String;

.field private seconds_:Ljava/lang/String;

.field private status_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7895
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7896
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 7897
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 2

    .prologue
    .line 7715
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    if-nez v0, :cond_1

    .line 7716
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7718
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    if-nez v0, :cond_0

    .line 7719
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    .line 7721
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7723
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    return-object v0

    .line 7721
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8063
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8057
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7900
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7901
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    .line 7902
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    .line 7903
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    .line 7904
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    .line 7905
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    .line 7906
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    .line 7907
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    .line 7908
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    .line 7909
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 7910
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->cachedSize:I

    .line 7911
    return-object p0
.end method

.method public clearFirstTeamScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 7821
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    .line 7822
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7823
    return-object p0
.end method

.method public clearMaxNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 7799
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    .line 7800
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7801
    return-object p0
.end method

.method public clearMinutes()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 7865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    .line 7866
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7867
    return-object p0
.end method

.method public clearNumber()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 7780
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    .line 7781
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7782
    return-object p0
.end method

.method public clearSecondTeamScore()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 7843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    .line 7844
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7845
    return-object p0
.end method

.method public clearSeconds()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 7887
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    .line 7888
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7889
    return-object p0
.end method

.method public clearStatus()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 7761
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    .line 7762
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7763
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1

    .prologue
    .line 7742
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    .line 7743
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7744
    return-object p0
.end method

.method public getFirstTeamScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7807
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxNumber()I
    .locals 1

    .prologue
    .line 7788
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    return v0
.end method

.method public getMinutes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7851
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 7769
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    return v0
.end method

.method public getSecondTeamScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7829
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    return-object v0
.end method

.method public getSeconds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7873
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7948
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 7949
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7950
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7953
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7954
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7957
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7958
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7961
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 7962
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7965
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 7966
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7969
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 7970
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7973
    :cond_5
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 7974
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7977
    :cond_6
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 7978
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7981
    :cond_7
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    if-eqz v1, :cond_8

    .line 7982
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7985
    :cond_8
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->cachedSize:I

    .line 7986
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 7750
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 7731
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    return v0
.end method

.method public hasFirstTeamScore()Z
    .locals 1

    .prologue
    .line 7818
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxNumber()Z
    .locals 1

    .prologue
    .line 7796
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinutes()Z
    .locals 1

    .prologue
    .line 7862
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 7777
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondTeamScore()Z
    .locals 1

    .prologue
    .line 7840
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSeconds()Z
    .locals 1

    .prologue
    .line 7884
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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
    .line 7758
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 7739
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

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
    .line 7698
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7994
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7995
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7999
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8000
    :sswitch_0
    return-object p0

    .line 8005
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    .line 8006
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    goto :goto_0

    .line 8010
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    .line 8011
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    goto :goto_0

    .line 8015
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    .line 8016
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    goto :goto_0

    .line 8020
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    .line 8021
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    goto :goto_0

    .line 8025
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    .line 8026
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    goto :goto_0

    .line 8030
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    .line 8031
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    goto :goto_0

    .line 8035
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    .line 8036
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    goto :goto_0

    .line 8040
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    .line 8041
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    goto :goto_0

    .line 8045
    :sswitch_9
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    if-nez v1, :cond_1

    .line 8046
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    .line 8048
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7995
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public setFirstTeamScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7810
    if-nez p1, :cond_0

    .line 7811
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7813
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    .line 7814
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7815
    return-object p0
.end method

.method public setMaxNumber(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7791
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    .line 7792
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7793
    return-object p0
.end method

.method public setMinutes(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7854
    if-nez p1, :cond_0

    .line 7855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7857
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    .line 7858
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7859
    return-object p0
.end method

.method public setNumber(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7772
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    .line 7773
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7774
    return-object p0
.end method

.method public setSecondTeamScore(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7832
    if-nez p1, :cond_0

    .line 7833
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7835
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    .line 7836
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7837
    return-object p0
.end method

.method public setSeconds(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7876
    if-nez p1, :cond_0

    .line 7877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7879
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    .line 7880
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7881
    return-object p0
.end method

.method public setStatus(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7753
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    .line 7754
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7755
    return-object p0
.end method

.method public setType(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Period;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 7734
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    .line 7735
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    .line 7736
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
    .line 7917
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7918
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7920
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7921
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7923
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7924
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->number_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7926
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7927
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->maxNumber_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7929
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7930
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->firstTeamScore_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7932
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7933
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->secondTeamScore_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7935
    :cond_5
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 7936
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->minutes_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7938
    :cond_6
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 7939
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->seconds_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7941
    :cond_7
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    if-eqz v0, :cond_8

    .line 7942
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Period;->baseball:Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballPeriod;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7944
    :cond_8
    return-void
.end method
