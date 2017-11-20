.class public final Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Logs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/proto/Logs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidCheckinProto"
.end annotation


# instance fields
.field private build_:Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

.field private cachedSize:I

.field private cellOperator_:Ljava/lang/String;

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;",
            ">;"
        }
    .end annotation
.end field

.field private hasBuild:Z

.field private hasCellOperator:Z

.field private hasLastCheckinMsec:Z

.field private hasRoaming:Z

.field private hasSimOperator:Z

.field private hasUserNumber:Z

.field private lastCheckinMsec_:J

.field private requestedGroup_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private roaming_:Ljava/lang/String;

.field private simOperator_:Ljava/lang/String;

.field private stat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;",
            ">;"
        }
    .end annotation
.end field

.field private userNumber_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->build_:Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 821
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->lastCheckinMsec_:J

    .line 837
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->requestedGroup_:Ljava/util/List;

    .line 870
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->event_:Ljava/util/List;

    .line 903
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->stat_:Ljava/util/List;

    .line 937
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->cellOperator_:Ljava/lang/String;

    .line 954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->simOperator_:Ljava/lang/String;

    .line 971
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->roaming_:Ljava/lang/String;

    .line 988
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->userNumber_:I

    .line 1058
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->cachedSize:I

    .line 796
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    .prologue
    .line 887
    if-nez p1, :cond_0

    .line 888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->event_:Ljava/util/List;

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    return-object p0
.end method

.method public addRequestedGroup(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->requestedGroup_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->requestedGroup_:Ljava/util/List;

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->requestedGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    return-object p0
.end method

.method public addStat(Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;

    .prologue
    .line 920
    if-nez p1, :cond_0

    .line 921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->stat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->stat_:Ljava/util/List;

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->stat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    return-object p0
.end method

.method public getBuild()Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->build_:Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1061
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getSerializedSize()I

    .line 1065
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->cachedSize:I

    return v0
.end method

.method public getCellOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->cellOperator_:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    return-object v0
.end method

.method public getEventCount()I
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getLastCheckinMsec()J
    .locals 2

    .prologue
    .line 822
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->lastCheckinMsec_:J

    return-wide v0
.end method

.method public getRequestedGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->requestedGroup_:Ljava/util/List;

    return-object v0
.end method

.method public getRoaming()Ljava/lang/String;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->roaming_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1070
    const/4 v3, 0x0

    .line 1071
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasBuild()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1072
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getBuild()Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1075
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasLastCheckinMsec()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1076
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getLastCheckinMsec()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1079
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getEventList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    .line 1080
    .local v1, "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    const/4 v4, 0x3

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1083
    .end local v1    # "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getStatList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;

    .line 1084
    .local v1, "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    const/4 v4, 0x4

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 1088
    .end local v1    # "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    :cond_3
    const/4 v0, 0x0

    .line 1089
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getRequestedGroupList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1090
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 1093
    .end local v1    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v3, v0

    .line 1094
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getRequestedGroupList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1096
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasCellOperator()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1097
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getCellOperator()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1100
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasSimOperator()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1101
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1104
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasRoaming()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1105
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getRoaming()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1108
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasUserNumber()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1109
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getUserNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1112
    :cond_8
    iput v3, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->cachedSize:I

    .line 1113
    return v3
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->simOperator_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->stat_:Ljava/util/List;

    return-object v0
.end method

.method public getUserNumber()I
    .locals 1

    .prologue
    .line 989
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->userNumber_:I

    return v0
.end method

.method public hasBuild()Z
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasBuild:Z

    return v0
.end method

.method public hasCellOperator()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasCellOperator:Z

    return v0
.end method

.method public hasLastCheckinMsec()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasLastCheckinMsec:Z

    return v0
.end method

.method public hasRoaming()Z
    .locals 1

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasRoaming:Z

    return v0
.end method

.method public hasSimOperator()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasSimOperator:Z

    return v0
.end method

.method public hasUserNumber()Z
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasUserNumber:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1017
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getEventList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    .line 1018
    .local v0, "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1023
    .end local v0    # "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :goto_0
    return v2

    .line 1020
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getStatList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;

    .line 1021
    .local v0, "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1023
    .end local v0    # "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1122
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1126
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1127
    :sswitch_0
    return-object p0

    .line 1132
    :sswitch_1
    new-instance v1, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    invoke-direct {v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;-><init>()V

    .line 1133
    .local v1, "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1134
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setBuild(Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    goto :goto_0

    .line 1138
    .end local v1    # "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setLastCheckinMsec(J)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    goto :goto_0

    .line 1142
    :sswitch_3
    new-instance v1, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    invoke-direct {v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;-><init>()V

    .line 1143
    .local v1, "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1144
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->addEvent(Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    goto :goto_0

    .line 1148
    .end local v1    # "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :sswitch_4
    new-instance v1, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;

    invoke-direct {v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;-><init>()V

    .line 1149
    .local v1, "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1150
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->addStat(Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    goto :goto_0

    .line 1154
    .end local v1    # "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->addRequestedGroup(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    goto :goto_0

    .line 1158
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setCellOperator(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    goto :goto_0

    .line 1162
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setSimOperator(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    goto :goto_0

    .line 1166
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setRoaming(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    goto :goto_0

    .line 1170
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->setUserNumber(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    goto :goto_0

    .line 1122
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    move-result-object v0

    return-object v0
.end method

.method public setBuild(Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .prologue
    .line 805
    if-nez p1, :cond_0

    .line 806
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 808
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasBuild:Z

    .line 809
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->build_:Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    .line 810
    return-object p0
.end method

.method public setCellOperator(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasCellOperator:Z

    .line 942
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->cellOperator_:Ljava/lang/String;

    .line 943
    return-object p0
.end method

.method public setLastCheckinMsec(J)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasLastCheckinMsec:Z

    .line 826
    iput-wide p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->lastCheckinMsec_:J

    .line 827
    return-object p0
.end method

.method public setRoaming(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasRoaming:Z

    .line 976
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->roaming_:Ljava/lang/String;

    .line 977
    return-object p0
.end method

.method public setSimOperator(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasSimOperator:Z

    .line 959
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->simOperator_:Ljava/lang/String;

    .line 960
    return-object p0
.end method

.method public setUserNumber(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasUserNumber:Z

    .line 993
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->userNumber_:I

    .line 994
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1030
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getBuild()Lcom/google/android/gsf/checkin/proto/Logs$AndroidBuildProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasLastCheckinMsec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1033
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getLastCheckinMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1035
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getEventList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;

    .line 1036
    .local v0, "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1038
    .end local v0    # "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidEventProto;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getStatList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;

    .line 1039
    .local v0, "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1041
    .end local v0    # "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidStatisticProto;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getRequestedGroupList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1042
    .local v0, "element":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_2

    .line 1044
    .end local v0    # "element":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasCellOperator()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1045
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getCellOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1047
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasSimOperator()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1048
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1050
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasRoaming()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1051
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getRoaming()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1053
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->hasUserNumber()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1054
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->getUserNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1056
    :cond_8
    return-void
.end method
