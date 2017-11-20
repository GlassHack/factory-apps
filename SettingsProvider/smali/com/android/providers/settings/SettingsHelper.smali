.class public Lcom/android/providers/settings/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    .line 44
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 46
    return-void
.end method

.method private getCanonicalRingtoneValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 119
    .local v1, "ringtoneUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    .local v0, "canonicalUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private isAlreadyConfiguredCriticalAccessibilitySetting(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    const-string v2, "accessibility_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "accessibility_script_injection"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "speak_password"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "touch_exploration_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 133
    goto :goto_0

    .line 134
    :cond_3
    const-string v2, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "enabled_accessibility_services"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 139
    goto :goto_0
.end method

.method private setAutoRestore(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    :try_start_0
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 146
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 177
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 179
    .local v0, "power":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "power":Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setGpsLocation(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 154
    .local v2, "um":Landroid/os/UserManager;
    const-string v3, "no_share_location"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "gps"

    .line 158
    .local v0, "GPS":Ljava/lang/String;
    const-string v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "gps,"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ",gps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ",gps,"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 163
    .local v1, "enabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 158
    .end local v1    # "enabled":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setRingtone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 115
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v2, 0x0

    .line 102
    .local v2, "ringtoneUri":Landroid/net/Uri;
    const-string v3, "_silent"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    const/4 v2, 0x0

    .line 112
    :cond_1
    const-string v3, "ringtone"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 114
    .local v1, "ringtoneType":I
    :goto_1
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 105
    .end local v1    # "ringtoneType":I
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 106
    .local v0, "canonicalUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 107
    if-nez v2, :cond_1

    goto :goto_0

    .line 112
    .end local v0    # "canonicalUri":Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private setSoundEffects(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method


# virtual methods
.method applyAudioSettings()V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->reloadAudioSettings()V

    .line 245
    return-void
.end method

.method getLocaleData()[B
    .locals 6

    .prologue
    .line 188
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 189
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 190
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "localeString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method

.method public onBackupValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v0, "ringtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notification_sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    if-nez p2, :cond_2

    .line 83
    const-string p2, "_silent"

    .line 89
    .end local p2    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 85
    .restart local p2    # "value":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->getCanonicalRingtoneValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public restoreValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    const-string v2, "screen_brightness"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setBrightness(I)V

    :cond_0
    :goto_0
    move v0, v1

    .line 74
    :cond_1
    :goto_1
    return v0

    .line 60
    :cond_2
    const-string v2, "sound_effects_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setSoundEffects(Z)V

    goto :goto_0

    .line 62
    :cond_4
    const-string v2, "location_providers_allowed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 63
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->setGpsLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_5
    const-string v2, "backup_auto_restore"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_6

    move v0, v1

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setAutoRestore(Z)V

    goto :goto_0

    .line 67
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsHelper;->isAlreadyConfiguredCriticalAccessibilitySetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    const-string v2, "ringtone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "notification_sound"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsHelper;->setRingtone(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method setLocaleData([BI)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 205
    iget-object v9, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 206
    .local v2, "conf":Landroid/content/res/Configuration;
    iget-object v7, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 210
    .local v7, "loc":Ljava/util/Locale;
    iget-boolean v9, v2, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v9, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v9, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "availableLocales":[Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1, v10, p2}, Ljava/lang/String;-><init>([BII)V

    .line 214
    .local v8, "localeCode":Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 215
    .local v6, "language":Ljava/lang/String;
    const/4 v9, 0x4

    if-le p2, v9, :cond_3

    new-instance v4, Ljava/lang/String;

    const/4 v9, 0x3

    invoke-direct {v4, p1, v9, v11}, Ljava/lang/String;-><init>([BII)V

    .line 216
    .local v4, "country":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .line 217
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v9, v1

    if-ge v5, v9, :cond_2

    .line 218
    aget-object v9, v1, v5

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 219
    new-instance v7, Ljava/util/Locale;

    .end local v7    # "loc":Ljava/util/Locale;
    invoke-direct {v7, v6, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .restart local v7    # "loc":Ljava/util/Locale;
    :cond_2
    if-eqz v7, :cond_0

    .line 226
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 227
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 228
    .local v3, "config":Landroid/content/res/Configuration;
    iput-object v7, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 230
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 232
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v3    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 215
    .end local v4    # "country":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_3
    const-string v4, ""

    goto :goto_1

    .line 217
    .restart local v4    # "country":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
