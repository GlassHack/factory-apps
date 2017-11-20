.class public final Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/proto/Checkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidCheckinResponse"
.end annotation


# instance fields
.field private androidId_:J

.field private cachedSize:I

.field private deleteSetting_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private digest_:Ljava/lang/String;

.field private hasAndroidId:Z

.field private hasDigest:Z

.field private hasMarketOk:Z

.field private hasSecurityToken:Z

.field private hasSettingsDiff:Z

.field private hasStatsOk:Z

.field private hasTimeMsec:Z

.field private intent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;",
            ">;"
        }
    .end annotation
.end field

.field private marketOk_:Z

.field private securityToken_:J

.field private setting_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;",
            ">;"
        }
    .end annotation
.end field

.field private settingsDiff_:Z

.field private statsOk_:Z

.field private timeMsec_:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 943
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 948
    iput-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->statsOk_:Z

    .line 965
    iput-wide v2, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->timeMsec_:J

    .line 981
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->intent_:Ljava/util/List;

    .line 1015
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->digest_:Ljava/lang/String;

    .line 1032
    iput-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->settingsDiff_:Z

    .line 1048
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->deleteSetting_:Ljava/util/List;

    .line 1081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setting_:Ljava/util/List;

    .line 1115
    iput-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->marketOk_:Z

    .line 1132
    iput-wide v2, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->androidId_:J

    .line 1149
    iput-wide v2, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->securityToken_:J

    .line 1224
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->cachedSize:I

    .line 943
    return-void
.end method


# virtual methods
.method public addDeleteSetting(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1065
    if-nez p1, :cond_0

    .line 1066
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->deleteSetting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->deleteSetting_:Ljava/util/List;

    .line 1071
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->deleteSetting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    return-object p0
.end method

.method public addIntent(Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    .prologue
    .line 998
    if-nez p1, :cond_0

    .line 999
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->intent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->intent_:Ljava/util/List;

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->intent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    return-object p0
.end method

.method public addSetting(Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;

    .prologue
    .line 1098
    if-nez p1, :cond_0

    .line 1099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setting_:Ljava/util/List;

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    return-object p0
.end method

.method public getAndroidId()J
    .locals 2

    .prologue
    .line 1133
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->androidId_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 1229
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSerializedSize()I

    .line 1231
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->cachedSize:I

    return v0
.end method

.method public getDeleteSetting(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->deleteSetting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteSettingCount()I
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->deleteSetting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeleteSettingList()Ljava/util/List;
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
    .line 1051
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->deleteSetting_:Ljava/util/List;

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->digest_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->intent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    return-object v0
.end method

.method public getIntentCount()I
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->intent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->intent_:Ljava/util/List;

    return-object v0
.end method

.method public getMarketOk()Z
    .locals 1

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->marketOk_:Z

    return v0
.end method

.method public getSecurityToken()J
    .locals 2

    .prologue
    .line 1150
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->securityToken_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1236
    const/4 v3, 0x0

    .line 1237
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasStatsOk()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1238
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getStatsOk()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1241
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getIntentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    .line 1242
    .local v1, "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    const/4 v4, 0x2

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1245
    .end local v1    # "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasTimeMsec()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1246
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getTimeMsec()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1249
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasDigest()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1250
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getDigest()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1253
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSettingList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;

    .line 1254
    .local v1, "element":Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 1257
    .end local v1    # "element":Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasMarketOk()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1258
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getMarketOk()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1261
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasAndroidId()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1262
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getAndroidId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1265
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasSecurityToken()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1266
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSecurityToken()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1269
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasSettingsDiff()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1270
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSettingsDiff()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1274
    :cond_8
    const/4 v0, 0x0

    .line 1275
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getDeleteSettingList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1276
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 1279
    .end local v1    # "element":Ljava/lang/String;
    :cond_9
    add-int/2addr v3, v0

    .line 1280
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getDeleteSettingList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1282
    iput v3, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->cachedSize:I

    .line 1283
    return v3
.end method

.method public getSetting(I)Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setting_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;

    return-object v0
.end method

.method public getSettingCount()I
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setting_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSettingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setting_:Ljava/util/List;

    return-object v0
.end method

.method public getSettingsDiff()Z
    .locals 1

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->settingsDiff_:Z

    return v0
.end method

.method public getStatsOk()Z
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->statsOk_:Z

    return v0
.end method

.method public getTimeMsec()J
    .locals 2

    .prologue
    .line 966
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->timeMsec_:J

    return-wide v0
.end method

.method public hasAndroidId()Z
    .locals 1

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasAndroidId:Z

    return v0
.end method

.method public hasDigest()Z
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasDigest:Z

    return v0
.end method

.method public hasMarketOk()Z
    .locals 1

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasMarketOk:Z

    return v0
.end method

.method public hasSecurityToken()Z
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasSecurityToken:Z

    return v0
.end method

.method public hasSettingsDiff()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasSettingsDiff:Z

    return v0
.end method

.method public hasStatsOk()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasStatsOk:Z

    return v0
.end method

.method public hasTimeMsec()Z
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasTimeMsec:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1291
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1292
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1296
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1297
    :sswitch_0
    return-object p0

    .line 1302
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setStatsOk(Z)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    goto :goto_0

    .line 1306
    :sswitch_2
    new-instance v1, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    invoke-direct {v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;-><init>()V

    .line 1307
    .local v1, "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1308
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->addIntent(Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    goto :goto_0

    .line 1312
    .end local v1    # "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setTimeMsec(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    goto :goto_0

    .line 1316
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setDigest(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    goto :goto_0

    .line 1320
    :sswitch_5
    new-instance v1, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;

    invoke-direct {v1}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;-><init>()V

    .line 1321
    .local v1, "value":Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1322
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->addSetting(Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    goto :goto_0

    .line 1326
    .end local v1    # "value":Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setMarketOk(Z)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    goto :goto_0

    .line 1330
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setAndroidId(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    goto :goto_0

    .line 1334
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setSecurityToken(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    goto :goto_0

    .line 1338
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->setSettingsDiff(Z)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    goto :goto_0

    .line 1342
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->addDeleteSetting(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    goto :goto_0

    .line 1292
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x39 -> :sswitch_7
        0x41 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
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
    .line 940
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidId(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasAndroidId:Z

    .line 1137
    iput-wide p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->androidId_:J

    .line 1138
    return-object p0
.end method

.method public setDigest(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasDigest:Z

    .line 1020
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->digest_:Ljava/lang/String;

    .line 1021
    return-object p0
.end method

.method public setMarketOk(Z)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasMarketOk:Z

    .line 1120
    iput-boolean p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->marketOk_:Z

    .line 1121
    return-object p0
.end method

.method public setSecurityToken(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasSecurityToken:Z

    .line 1154
    iput-wide p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->securityToken_:J

    .line 1155
    return-object p0
.end method

.method public setSettingsDiff(Z)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasSettingsDiff:Z

    .line 1037
    iput-boolean p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->settingsDiff_:Z

    .line 1038
    return-object p0
.end method

.method public setStatsOk(Z)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasStatsOk:Z

    .line 953
    iput-boolean p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->statsOk_:Z

    .line 954
    return-object p0
.end method

.method public setTimeMsec(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasTimeMsec:Z

    .line 970
    iput-wide p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->timeMsec_:J

    .line 971
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
    .line 1192
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasStatsOk()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1193
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getStatsOk()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getIntentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    .line 1196
    .local v0, "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1198
    .end local v0    # "element":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasTimeMsec()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1199
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getTimeMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1201
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasDigest()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1202
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getDigest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1204
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSettingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;

    .line 1205
    .local v0, "element":Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1207
    .end local v0    # "element":Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasMarketOk()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1208
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getMarketOk()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1210
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasAndroidId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1211
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getAndroidId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 1213
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasSecurityToken()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1214
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSecurityToken()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 1216
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasSettingsDiff()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1217
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSettingsDiff()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1219
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getDeleteSettingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1220
    .local v0, "element":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_2

    .line 1222
    .end local v0    # "element":Ljava/lang/String;
    :cond_9
    return-void
.end method
