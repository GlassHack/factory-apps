.class public Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "TalkContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract$AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMap"
.end annotation


# static fields
.field private static final HAS_CAMERA_V1:I = 0x4

.field private static final HAS_PMUC_V1:I = 0x8

.field private static final HAS_VIDEO_V1:I = 0x2

.field private static final HAS_VOICE_V1:I = 0x1


# instance fields
.field private mAccountId:J

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;ZJLandroid/os/Handler;)V
    .locals 6
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "keepUpdated"    # Z
    .param p3, "accountId"    # J
    .param p5, "handlerForUpdateNotifications"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 1812
    invoke-static {p3, p4}, Lcom/google/android/gsf/TalkContract$AccountSettings;->getContentUriByAccountId(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "name"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v0

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "name"

    invoke-direct {p0, v0, v1, p2, p5}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 1818
    iput-object p1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    .line 1819
    iput-wide p3, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    .line 1820
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 2324
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2325
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2    # "def":Z
    :cond_0
    return p2
.end method

.method public static getCapabilities(ZZ)I
    .locals 2
    .param p0, "video"    # Z
    .param p1, "audio"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2221
    if-eqz p0, :cond_1

    const/4 v1, 0x6

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private getInteger(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 2350
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2351
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "def":I
    :cond_0
    return p2
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 2363
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2364
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "def":J
    :cond_0
    return-wide p2
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 2337
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2338
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "def":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private static isTablet(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 2062
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2070
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 2072
    const/4 v1, 0x1

    .line 2074
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAudioChatEnabled()Z
    .locals 3

    .prologue
    .line 2107
    const-string v0, "audiochatv2"

    const-wide/16 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->access$000(J)Z

    move-result v0

    return v0
.end method

.method public getAudioChatUnset()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2115
    const-string v0, "audiochatv2"

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutomaticallyConnectToGTalkServer()Z
    .locals 2

    .prologue
    .line 1837
    const-string v0, "gtalk_auto_connect"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCameraEnabled()Z
    .locals 3

    .prologue
    .line 2182
    const-string v0, "show_camera"

    const-wide/16 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->access$000(J)Z

    move-result v0

    return v0
.end method

.method public getCameraUnset()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2190
    const-string v0, "show_camera"

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 2

    .prologue
    .line 2198
    const/16 v0, 0x8

    .line 2200
    .local v0, "caps":I
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getAudioChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2201
    or-int/lit8 v0, v0, 0x1

    .line 2204
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoChatEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2205
    or-int/lit8 v0, v0, 0x2

    .line 2207
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2208
    or-int/lit8 v0, v0, 0x4

    .line 2212
    :cond_1
    return v0
.end method

.method public getHeartbeatInterval()J
    .locals 3

    .prologue
    .line 2295
    const-string v0, "heartbeat_interval"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHideOfflineContacts()Z
    .locals 2

    .prologue
    .line 1857
    const-string v0, "hide_offline_contacts"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getJidResource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2312
    const-string v0, "jid_resource"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyFriendInvitation()Z
    .locals 2

    .prologue
    .line 2258
    const-string v0, "notify_invite"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowAwayOnIdle()Z
    .locals 2

    .prologue
    .line 2239
    const-string v0, "show_away_on_idle"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowMobileIndicator(Landroid/content/Context;)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 2054
    const-string v1, "mobile_indicator"

    invoke-static {p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextNotification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1980
    const-string v0, "text-notif-type"

    const-string v1, "statusbar"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextRingtoneURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2017
    const-string v0, "ringtone"

    const-string v1, "content://settings/system/notification_sound"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextVibrate()Z
    .locals 2

    .prologue
    .line 1876
    const-string/jumbo v0, "vibrate"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTextVibrateWhen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1895
    const-string/jumbo v1, "vibrate-when"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1896
    .local v0, "when":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1899
    .end local v0    # "when":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "when":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextVibrate()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "always"

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "never"

    goto :goto_1
.end method

.method public getUploadHeartbeatStat()Z
    .locals 2

    .prologue
    .line 2276
    const-string v0, "upload_heartbeat_stat"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoChatEnabled()Z
    .locals 3

    .prologue
    .line 2148
    const-string/jumbo v0, "videochatv2"

    const-wide/16 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->access$000(J)Z

    move-result v0

    return v0
.end method

.method public getVideoChatUnset()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2156
    const-string/jumbo v0, "videochatv2"

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoImageStabilization()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1961
    const-string/jumbo v0, "video-image-stabilization"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoNotification()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1999
    const-string/jumbo v0, "video-notif-type"

    const-string v1, "popup"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRingtoneURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2035
    const-string v0, "ringtone-video"

    const-string v1, "content://settings/system/ringtone"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoVibrate()Z
    .locals 2

    .prologue
    .line 1918
    const-string/jumbo v0, "vibrate-video"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoVibrateWhen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1937
    const-string/jumbo v1, "vibrate-when-video"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1938
    .local v0, "when":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1941
    .end local v0    # "when":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "when":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoVibrate()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "always"

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "never"

    goto :goto_1
.end method

.method public setAudioChatEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setAudioChatEnabled(Landroid/content/ContentResolver;ZJ)V

    .line 2085
    return-void
.end method

.method public setAudioChatEnabled(ZZ)Z
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "userSet"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2096
    const-string v0, "audiochatv2"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2097
    .local v3, "currentValue":J
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v5, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setAudioChatEnabled(Landroid/content/ContentResolver;ZZJJ)Z

    move-result v0

    return v0
.end method

.method public setAutomaticallyConnectToGTalkServer(Z)V
    .locals 3
    .param p1, "autoConnect"    # Z

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;ZJ)V

    .line 1830
    return-void
.end method

.method public setCameraEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setCameraEnabled(Landroid/content/ContentResolver;ZJ)V

    .line 2176
    return-void
.end method

.method public setCameraEnabled(ZZ)Z
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "userSet"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2166
    const-string v0, "show_camera"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2167
    .local v3, "currentValue":J
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v5, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setCameraEnabled(Landroid/content/ContentResolver;ZZJJ)Z

    move-result v0

    return v0
.end method

.method public setHeartbeatInterval(J)V
    .locals 3
    .param p1, "interval"    # J

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setHeartbeatInterval(Landroid/content/ContentResolver;JJ)V

    .line 2287
    return-void
.end method

.method public setHideOfflineContacts(Z)V
    .locals 3
    .param p1, "hideOfflineContacts"    # Z

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setHideOfflineContacts(Landroid/content/ContentResolver;ZJ)V

    .line 1849
    return-void
.end method

.method public setJidResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "jidResource"    # Ljava/lang/String;

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setJidResource(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 2305
    return-void
.end method

.method public setNotifyFriendInvitation(Z)V
    .locals 3
    .param p1, "notify"    # Z

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setNotifyFriendInvitation(Landroid/content/ContentResolver;ZJ)V

    .line 2250
    return-void
.end method

.method public setShowAwayOnIdle(Z)V
    .locals 3
    .param p1, "showAway"    # Z

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setShowAwayOnIdle(Landroid/content/ContentResolver;ZJ)V

    .line 2231
    return-void
.end method

.method public setShowMobileIndicator(Z)V
    .locals 3
    .param p1, "showMobile"    # Z

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setShowMobileIndicator(Landroid/content/ContentResolver;ZJ)V

    .line 2045
    return-void
.end method

.method public setTextNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "notificationType"    # Ljava/lang/String;

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1972
    return-void
.end method

.method public setTextRingtoneURI(Ljava/lang/String;)V
    .locals 3
    .param p1, "ringtoneUri"    # Ljava/lang/String;

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 2009
    return-void
.end method

.method public setTextVibrate(Z)V
    .locals 3
    .param p1, "vibrate"    # Z

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextVibrate(Landroid/content/ContentResolver;ZJ)V

    .line 1868
    return-void
.end method

.method public setTextVibrateWhen(Ljava/lang/String;)V
    .locals 3
    .param p1, "when"    # Ljava/lang/String;

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setTextVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1886
    return-void
.end method

.method public setUploadHeartbeatStat(Z)V
    .locals 3
    .param p1, "uploadStat"    # Z

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setUploadHeartbeatStat(Landroid/content/ContentResolver;ZJ)V

    .line 2268
    return-void
.end method

.method public setVideoChatEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoChatEnabled(Landroid/content/ContentResolver;ZJ)V

    .line 2126
    return-void
.end method

.method public setVideoChatEnabled(ZZ)Z
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "userSet"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2137
    const-string/jumbo v0, "videochatv2"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2138
    .local v3, "currentValue":J
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v5, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoChatEnabled(Landroid/content/ContentResolver;ZZJJ)Z

    move-result v0

    return v0
.end method

.method public setVideoImageStabilization(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageStabilization"    # Ljava/lang/String;

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoImageStabilization(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1953
    return-void
.end method

.method public setVideoNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "notificationType"    # Ljava/lang/String;

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1991
    return-void
.end method

.method public setVideoRingtoneURI(Ljava/lang/String;)V
    .locals 3
    .param p1, "ringtoneUri"    # Ljava/lang/String;

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 2027
    return-void
.end method

.method public setVideoVibrate(Z)V
    .locals 3
    .param p1, "vibrate"    # Z

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoVibrate(Landroid/content/ContentResolver;ZJ)V

    .line 1910
    return-void
.end method

.method public setVideoVibrateWhen(Ljava/lang/String;)V
    .locals 3
    .param p1, "when"    # Ljava/lang/String;

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->mAccountId:J

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/TalkContract$AccountSettings;->setVideoVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1928
    return-void
.end method
