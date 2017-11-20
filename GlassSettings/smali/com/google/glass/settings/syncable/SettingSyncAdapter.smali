.class public Lcom/google/glass/settings/syncable/SettingSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SettingSyncAdapter.java"


# static fields
.field private static final IS_DIRTY_QUERY_SELECTION:Ljava/lang/String; = "is_dirty>0"

.field private static final KEY_LAST_SYNCED_VERSION:Ljava/lang/String; = "preference_last_synced"

.field private static final NAME_AND_MODIFIED_TIME_QUERY_PROJECTION:[Ljava/lang/String;

.field private static final NAME_QUERY_SELECTION:Ljava/lang/String; = "name=?"

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final deviceId:Ljava/lang/String;

.field private final dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 46
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/settings/syncable/SettingSyncAdapter$1;

    invoke-direct {v1}, Lcom/google/glass/settings/syncable/SettingSyncAdapter$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "last_updated_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->NAME_AND_MODIFIED_TIME_QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/ContentResolver;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/content/SharedPreferences;Lcom/google/glass/util/SettingsSecure;)V
    .locals 1
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "dispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .param p5, "prefs"    # Landroid/content/SharedPreferences;
    .param p6, "settingsSecure"    # Lcom/google/glass/util/SettingsSecure;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 73
    iput-object p3, p0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    .line 74
    iput-object p4, p0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 75
    iput-object p5, p0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->prefs:Landroid/content/SharedPreferences;

    .line 76
    const-string v0, "android_id"

    invoke-virtual {p6, v0}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->deviceId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private applySyncResponse(Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;)V
    .locals 18
    .param p1, "response"    # Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    .prologue
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->getSyncVersion()J

    move-result-wide v12

    .line 154
    .local v12, "syncVersion":J
    sget-object v1, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    array-length v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x45

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Server response sync version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v1, 0x0

    move v15, v1

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    aget-object v11, v16, v15

    .line 157
    .local v11, "setting":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    sget-object v1, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Received setting from server response: [key=%s, value=%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    .line 158
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 157
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const/4 v7, 0x0

    .line 163
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 164
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->NAME_AND_MODIFIED_TIME_QUERY_PROJECTION:[Ljava/lang/String;

    const-string v4, "name=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 166
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 170
    const-string v1, "value"

    .line 171
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "existingSettingValue":Ljava/lang/String;
    const-string v1, "last_updated_time"

    .line 173
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    int-to-long v8, v1

    .line 174
    .local v8, "existingModifiedTime":J
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getModifiedTime()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-nez v1, :cond_1

    .line 176
    sget-object v1, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Skipping database update of setting: [key=%s, value=%s] "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    .line 177
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 176
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    if-eqz v7, :cond_0

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 156
    .end local v8    # "existingModifiedTime":J
    .end local v10    # "existingSettingValue":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto/16 :goto_0

    .line 182
    :cond_1
    if-eqz v7, :cond_2

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_2
    sget-object v1, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Insert/Update setting in db: [key=%s, value=%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    .line 187
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 186
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v14, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "value"

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "is_dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v1, "last_updated_time"

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getModifiedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const-string v1, "is_from_sync"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 198
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/settings/syncable/LocaleUpdater;->updateSystemLocaleIfNeeded(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 205
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v11    # "setting":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_last_synced"

    invoke-interface {v1, v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    sget-object v1, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "LastSyncedVersion set to %s in shared prefs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    sget-object v1, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Successfully applied sync response"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method private cleanDirtySyncableSettings([Lcom/google/googlex/glass/common/proto/SettingNano$Setting;)V
    .locals 10
    .param p1, "settingsRequested"    # [Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .prologue
    const/4 v9, 0x0

    .line 215
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "is_dirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    sget-object v5, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "cleaning syncable settings"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v1, "nameQuerySelectionBuilder":Ljava/lang/StringBuilder;
    array-length v5, p1

    new-array v3, v5, [Ljava/lang/String;

    .line 222
    .local v3, "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_1

    .line 223
    const-string v5, "name=?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_0

    .line 225
    const-string v5, " OR "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    aget-object v5, p1, v0

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v5, p0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 230
    invoke-virtual {v5, v6, v4, v7, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, "numOfRows":I
    sget-object v5, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "%s rows in syncable settings are cleaned"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 24
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 82
    sget-object v2, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Entering Settings onPerformSync [authority= %s, extras=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v18, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;-><init>()V

    .line 85
    .local v18, "request":Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->deviceId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "preference_last_synced"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 90
    .local v12, "lastSyncedVersion":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_0

    .line 91
    sget-object v2, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Setting lastSyncedVersion in request to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setLastSyncVersion(J)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    .line 95
    :cond_0
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setCurrentClientTimeMs(J)Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;

    .line 97
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v21, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/SettingNano$Setting;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "is_dirty>0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 101
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 102
    .local v23, "valueColumnIndex":I
    const-string v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 103
    .local v17, "nameColumnIndex":I
    const-string v2, "last_updated_time"

    .line 104
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 105
    .local v14, "lastUpdatedTimeColumnIndex":I
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    new-instance v20, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    invoke-direct/range {v20 .. v20}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;-><init>()V

    .line 107
    .local v20, "setting":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "key":Ljava/lang/String;
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 109
    .local v22, "value":Ljava/lang/String;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 110
    .local v15, "modifiedTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->deviceId:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v11}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->setKey(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    move-result-object v2

    .line 112
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->setValue(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    move-result-object v2

    .line 113
    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Lcom/google/googlex/glass/common/proto/SettingNano$Setting;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 114
    sget-object v2, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Adding setting to settings sync request [key=%s, value=%s, lastModifiedTime=%s]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object v22, v4, v5

    const/4 v5, 0x2

    .line 115
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 114
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "lastUpdatedTimeColumnIndex":I
    .end local v15    # "modifiedTime":J
    .end local v17    # "nameColumnIndex":I
    .end local v20    # "setting":Lcom/google/googlex/glass/common/proto/SettingNano$Setting;
    .end local v22    # "value":Ljava/lang/String;
    .end local v23    # "valueColumnIndex":I
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_1

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    .line 119
    .restart local v14    # "lastUpdatedTimeColumnIndex":I
    .restart local v17    # "nameColumnIndex":I
    .restart local v23    # "valueColumnIndex":I
    :cond_2
    if-eqz v8, :cond_3

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    .line 126
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v3, Lcom/google/glass/net/ServerConstants$Action;->SETTING_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 127
    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v19

    .line 129
    .local v19, "responseWrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;>;"
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_6

    .line 130
    :cond_4
    if-nez v19, :cond_5

    sget-object v10, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .line 133
    .local v10, "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    :goto_1
    sget-object v2, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x26

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while performing settings sync."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    move-object/from16 v0, p5

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    .line 145
    .end local v10    # "errorCode":Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;
    .end local v19    # "responseWrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;>;"
    :goto_2
    return-void

    .line 132
    .restart local v19    # "responseWrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;>;"
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    move-result-object v10

    goto :goto_1

    .line 140
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->applySyncResponse(Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;)V

    .line 141
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncRequest;->setting:[Lcom/google/googlex/glass/common/proto/SettingNano$Setting;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->cleanDirtySyncableSettings([Lcom/google/googlex/glass/common/proto/SettingNano$Setting;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 142
    .end local v19    # "responseWrapper":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SettingSyncNano$SettingSyncResponse;>;"
    :catch_0
    move-exception v9

    .line 143
    .local v9, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while performing settings sync."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v9, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
