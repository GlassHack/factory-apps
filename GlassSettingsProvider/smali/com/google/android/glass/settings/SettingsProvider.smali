.class public Lcom/google/android/glass/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHelper:Lcom/google/android/glass/settings/SettingsDatabaseHelper;

.field private final mNameValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/android/glass/settings/SettingsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/glass/settings/SettingsProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/glass/settings/SettingsProvider;->mNameValueMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method checkWritePermission()V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/android/glass/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v2, "Can\'t write settings without android.permission.WRITE_SECURE_SETTINGS."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 148
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/glass/settings/SettingsProvider;->checkWritePermission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const/4 v6, 0x0

    .line 151
    .local v6, "rowsDeleted":I
    :try_start_1
    iget-object v8, p0, Lcom/google/android/glass/settings/SettingsProvider;->mHelper:Lcom/google/android/glass/settings/SettingsDatabaseHelper;

    invoke-virtual {v8}, Lcom/google/android/glass/settings/SettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 152
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "system"

    invoke-virtual {v2, v8, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 153
    if-lez v6, :cond_1

    if-eqz p3, :cond_1

    array-length v8, p3

    if-lez v8, :cond_1

    .line 156
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 157
    .local v0, "arg":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/glass/settings/SettingsProvider;->mNameValueMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 158
    iget-object v8, p0, Lcom/google/android/glass/settings/SettingsProvider;->mNameValueMap:Ljava/util/Map;

    const/4 v9, 0x0

    aget-object v9, p3, v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v3

    .line 163
    .local v3, "e":Landroid/database/SQLException;
    :try_start_2
    sget-object v8, Lcom/google/android/glass/settings/SettingsProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error deleting:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .end local v3    # "e":Landroid/database/SQLException;
    :goto_1
    monitor-exit p0

    return v7

    .line 167
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    if-lez v6, :cond_2

    .line 168
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/glass/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move v7, v6

    .line 170
    goto :goto_1

    .line 148
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "rowsDeleted":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 127
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/glass/settings/SettingsProvider;->checkWritePermission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const-wide/16 v2, -0x1

    .line 130
    .local v2, "rowId":J
    :try_start_1
    iget-object v5, p0, Lcom/google/android/glass/settings/SettingsProvider;->mHelper:Lcom/google/android/glass/settings/SettingsDatabaseHelper;

    invoke-virtual {v5}, Lcom/google/android/glass/settings/SettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 131
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "system"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 138
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 139
    :try_start_2
    iget-object v4, p0, Lcom/google/android/glass/settings/SettingsProvider;->mNameValueMap:Ljava/util/Map;

    const-string v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/glass/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 143
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "system/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    monitor-exit p0

    return-object v4

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/database/SQLException;
    :try_start_3
    sget-object v5, Lcom/google/android/glass/settings/SettingsProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error inserting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 127
    .end local v1    # "e":Landroid/database/SQLException;
    .end local v2    # "rowId":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/glass/settings/SettingsDatabaseHelper;

    invoke-virtual {p0}, Lcom/google/android/glass/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/glass/settings/SettingsDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/glass/settings/SettingsProvider;->mHelper:Lcom/google/android/glass/settings/SettingsDatabaseHelper;

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method parseSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "upperCaseColumnName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "upperCaseSelection":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(\\s*)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(\\s*)=(\\s*)\"(.+)\"(\\s*)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "parsedToken":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 217
    .end local v0    # "parsedToken":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 215
    .restart local v0    # "parsedToken":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    aget-object v4, v0, v4

    goto :goto_0
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 90
    monitor-enter p0

    const/4 v9, 0x0

    .line 91
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 93
    .local v11, "name":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 94
    const/4 v2, 0x0

    :try_start_0
    aget-object v11, p4, v2

    .line 96
    :cond_0
    if-eqz p3, :cond_1

    .line 97
    const-string v2, "name"

    invoke-virtual {p0, v2, p3}, Lcom/google/android/glass/settings/SettingsProvider;->parseSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 101
    :cond_1
    if-eqz v11, :cond_3

    iget-object v2, p0, Lcom/google/android/glass/settings/SettingsProvider;->mNameValueMap:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    new-instance v10, Lcom/google/android/glass/settings/SettingsCursor;

    iget-object v2, p0, Lcom/google/android/glass/settings/SettingsProvider;->mNameValueMap:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v11, v2, p2}, Lcom/google/android/glass/settings/SettingsCursor;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "cursor":Landroid/database/Cursor;
    .local v10, "cursor":Landroid/database/Cursor;
    move-object v9, v10

    .line 122
    .end local v10    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v9

    .line 105
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/google/android/glass/settings/SettingsProvider;->mHelper:Lcom/google/android/glass/settings/SettingsDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/glass/settings/SettingsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 106
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 108
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "system"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 109
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 112
    if-eqz v9, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/google/android/glass/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 116
    if-eqz p4, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    const-string v2, "value"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 118
    .local v8, "colValueCurrent":I
    iget-object v2, p0, Lcom/google/android/glass/settings/SettingsProvider;->mNameValueMap:Ljava/util/Map;

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    .end local v0    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "colValueCurrent":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/glass/settings/SettingsProvider;->checkWritePermission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    const/4 v2, 0x0

    .line 179
    .local v2, "rowsUpdated":I
    :try_start_1
    iget-object v3, p0, Lcom/google/android/glass/settings/SettingsProvider;->mHelper:Lcom/google/android/glass/settings/SettingsDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/glass/settings/SettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "system"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 181
    if-lez v2, :cond_0

    .line 182
    iget-object v3, p0, Lcom/google/android/glass/settings/SettingsProvider;->mNameValueMap:Ljava/util/Map;

    const-string v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/glass/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    monitor-exit p0

    return v2

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Landroid/database/SQLException;
    :try_start_3
    sget-object v3, Lcom/google/android/glass/settings/SettingsProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error updating: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 176
    .end local v1    # "e":Landroid/database/SQLException;
    .end local v2    # "rowsUpdated":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
