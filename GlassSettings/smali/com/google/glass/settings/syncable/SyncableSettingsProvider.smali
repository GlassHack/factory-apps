.class public Lcom/google/glass/settings/syncable/SyncableSettingsProvider;
.super Landroid/content/ContentProvider;
.source "SyncableSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/syncable/SyncableSettingsProvider$1;,
        Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;,
        Lcom/google/glass/settings/syncable/SyncableSettingsProvider$Columns;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final QUERY_SELECTION:Ljava/lang/String; = "name=?"

.field private static final SYNCABLE_SETTINGS_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.GlassSyncableSettings"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private dbHelper:Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 163
    return-void
.end method


# virtual methods
.method clearTestContentResolverInstance()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->contentResolver:Landroid/content/ContentResolver;

    .line 69
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 153
    iget-object v2, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->dbHelper:Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 154
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "syncable_settings"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "deleted":I
    if-lez v1, :cond_0

    .line 157
    iget-object v2, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 160
    :cond_0
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 51
    const-string v0, "vnd.android.cursor.dir/vnd.GlassSyncableSettings"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 82
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "name":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 84
    const/4 v6, 0x0

    .line 86
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 87
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v2, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 88
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 89
    sget-object v0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Row already existed in db, calling update instead for [key=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const-string v0, "name=?"

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-eqz v6, :cond_0

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 117
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 94
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_2

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->dbHelper:Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 101
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "is_from_sync"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 102
    .local v8, "isFromSync":Z
    if-nez v8, :cond_3

    const-string v0, "is_dirty"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    const-string v0, "is_dirty"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    :cond_3
    if-nez v8, :cond_4

    const-string v0, "last_updated_time"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    const-string v0, "last_updated_time"

    .line 107
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 106
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    :cond_4
    const-string v0, "is_from_sync"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    const-string v0, "is_from_sync"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 113
    :cond_5
    const-string v0, "syncable_settings"

    invoke-virtual {v7, v0, v12, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 115
    iget-object v1, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->contentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;

    if-nez v8, :cond_7

    move v0, v10

    :goto_1
    invoke-virtual {v1, v2, v12, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 117
    sget-object v0, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;

    goto :goto_0

    .line 94
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "isFromSync":Z
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "isFromSync":Z
    :cond_7
    move v0, v11

    .line 115
    goto :goto_1
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;-><init>(Landroid/content/Context;Lcom/google/glass/settings/syncable/SyncableSettingsProvider$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->dbHelper:Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->contentResolver:Landroid/content/ContentResolver;

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v1, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->dbHelper:Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "syncable_settings"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method setTestContentResolverInstance(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->contentResolver:Landroid/content/ContentResolver;

    .line 64
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 122
    iget-object v4, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->dbHelper:Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/glass/settings/syncable/SyncableSettingsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "is_from_sync"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 124
    .local v1, "isFromSync":Z
    if-nez v1, :cond_0

    const-string v4, "is_dirty"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    const-string v4, "is_dirty"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    :cond_0
    if-nez v1, :cond_1

    const-string v4, "last_updated_time"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "value"

    .line 128
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    const-string v4, "last_updated_time"

    .line 132
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 131
    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    :cond_1
    const-string v4, "is_from_sync"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    const-string v4, "is_from_sync"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 138
    :cond_2
    const-string v4, "syncable_settings"

    invoke-virtual {v0, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 140
    .local v2, "updated":I
    if-lez v2, :cond_4

    .line 142
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v3, :cond_3

    const-string v4, "is_dirty"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "is_dirty"

    .line 143
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    :cond_3
    iget-object v4, p0, Lcom/google/glass/settings/syncable/SyncableSettingsProvider;->contentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/google/glass/settings/SyncableSettingsContract;->SETTINGS_TABLE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    if-nez v1, :cond_5

    :goto_0
    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 148
    :cond_4
    return v2

    .line 144
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method
