.class public Lcom/google/android/gsf/checkin/CheckinResponseProcessor;
.super Ljava/lang/Object;
.source "CheckinResponseProcessor.java"


# direct methods
.method public static getIntents(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;)[Landroid/content/Intent;
    .locals 8
    .param p0, "response"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getIntentCount()I

    move-result v7

    new-array v4, v7, [Landroid/content/Intent;

    .line 74
    .local v4, "intents":[Landroid/content/Intent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v4

    if-ge v1, v7, :cond_6

    .line 75
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getIntent(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;

    move-result-object v3

    .line 76
    .local v3, "intentProto":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    aput-object v2, v4, v1

    .line 77
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasAction()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    invoke-virtual {v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasDataUri()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    invoke-virtual {v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getDataUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->hasMimeType()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 84
    invoke-virtual {v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :cond_2
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getExtraCount()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 88
    invoke-virtual {v3, v5}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;->getExtra(I)Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;

    move-result-object v0

    .line 89
    .local v0, "extraProto":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->hasName()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 90
    const-string v6, ""

    .line 91
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->hasValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "extraProto":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto$Extra;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intentProto":Lcom/google/android/gsf/checkin/proto/Logs$AndroidIntentProto;
    .end local v5    # "j":I
    :cond_6
    return-object v4
.end method

.method public static updateGservices(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;Landroid/content/ContentResolver;)V
    .locals 8
    .param p0, "response"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->hasSettingsDiff()Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v0, "gs":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSettingCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 46
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSetting(I)Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;

    move-result-object v3

    .line 47
    .local v3, "setting":Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    invoke-virtual {v3}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->getName()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/micro/ByteStringMicro;->toStringUtf8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;->getValue()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/micro/ByteStringMicro;->toStringUtf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    .end local v3    # "setting":Lcom/google/android/gsf/checkin/proto/Checkin$GservicesSetting;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSettingsDiff()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getDeleteSettingCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 53
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getDeleteSetting(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    move-object v4, v5

    .line 54
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 56
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const-string v4, "CheckinResponseProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "From server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getSettingCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gservices updates and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;->getDeleteSettingCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " deletes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v4, Lcom/google/android/gsf/gservices/GservicesProvider;->UPDATE_MAIN_DIFF_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_3
    const-string v4, "CheckinResponseProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "From server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gservices [full]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v4, Lcom/google/android/gsf/gservices/GservicesProvider;->UPDATE_MAIN_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method
