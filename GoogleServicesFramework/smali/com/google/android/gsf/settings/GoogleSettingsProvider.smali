.class public Lcom/google/android/gsf/settings/GoogleSettingsProvider;
.super Landroid/content/ContentProvider;
.source "GoogleSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    }
.end annotation


# instance fields
.field private mLinkAssistedGps:Z

.field private mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mLinkAssistedGps:Z

    .line 48
    return-void
.end method

.method private checkNetworkLocationOptIn(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 196
    iget-boolean v1, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mLinkAssistedGps:Z

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string v1, "network_location_opt_in"

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "value"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V
    .locals 2
    .param p1, "args"    # Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    .prologue
    .line 127
    const-string v0, "partner"

    iget-object v1, p1, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.providers.settings.permission.WRITE_GSETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot write to Google settings table"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .locals 5
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "rowId"    # J

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "table":Ljava/lang/String;
    const-string v2, "partner"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 103
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 112
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "notify":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 119
    :cond_1
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 209
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 210
    .local v0, "args":Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 212
    iget-object v4, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/gsf/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 213
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 215
    :try_start_0
    array-length v3, p2

    .line 216
    .local v3, "numValues":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 217
    iget-object v4, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v4, 0x0

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 227
    :goto_1
    return v4

    .line 219
    :cond_0
    :try_start_1
    aget-object v4, p2, v2

    invoke-direct {p0, v4}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkNetworkLocationOptIn(Landroid/content/ContentValues;)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 226
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 227
    array-length v4, p2

    goto :goto_1

    .line 223
    .end local v2    # "i":I
    .end local v3    # "numValues":I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 249
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 250
    .local v0, "args":Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 252
    iget-object v3, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/gsf/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 253
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 254
    .local v1, "count":I
    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 256
    :cond_0
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 187
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    .local v0, "args":Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    iget-object v1, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 232
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 233
    .local v0, "args":Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 235
    iget-object v5, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v5}, Lcom/google/android/gsf/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 236
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 237
    .local v2, "rowId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 244
    :goto_0
    return-object v4

    .line 240
    :cond_0
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object p1

    .line 241
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 242
    invoke-direct {p0, p2}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkNetworkLocationOptIn(Landroid/content/ContentValues;)V

    move-object v4, p1

    .line 244
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 136
    new-instance v1, Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gsf/settings/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    .line 138
    const-string v1, "ro.gps.agps_provider"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "agpsProvider":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "google"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mLinkAssistedGps:Z

    .line 143
    return v2

    .line 139
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "select"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v12, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v12, v0, v1, v2}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 149
    .local v12, "args":Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v5}, Lcom/google/android/gsf/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 152
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v5}, Lcom/google/android/gsf/settings/DatabaseHelper;->assistedGpsSettingNeedsUpdate()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mLinkAssistedGps:Z

    if-eqz v5, :cond_0

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 156
    .local v15, "resolver":Landroid/content/ContentResolver;
    const-string v5, "SELECT value FROM partner WHERE name = ?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v17

    .line 158
    .local v17, "s":Landroid/database/sqlite/SQLiteStatement;
    const/4 v5, 0x1

    const-string v6, "network_location_opt_in"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 159
    const/4 v14, 0x0

    .line 161
    .local v14, "optIn":Z
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    const/4 v14, 0x1

    .line 165
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 167
    const-string v5, "assisted_gps_enabled"

    const/4 v6, 0x1

    invoke-static {v15, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v11, 0x1

    .line 169
    .local v11, "agpsEnabled":Z
    :goto_1
    if-eq v11, v14, :cond_0

    .line 170
    const-string v6, "assisted_gps_enabled"

    if-eqz v14, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-static {v15, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    .end local v11    # "agpsEnabled":Z
    .end local v14    # "optIn":Z
    .end local v15    # "resolver":Landroid/content/ContentResolver;
    .end local v17    # "s":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 176
    .local v3, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v5, v12, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 178
    iget-object v6, v12, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v7, v12, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 179
    .local v16, "ret":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v5, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 180
    return-object v16

    .line 161
    .end local v3    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v16    # "ret":Landroid/database/Cursor;
    .restart local v14    # "optIn":Z
    .restart local v15    # "resolver":Landroid/content/ContentResolver;
    .restart local v17    # "s":Landroid/database/sqlite/SQLiteStatement;
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v13

    .line 163
    .local v13, "missing":Landroid/database/sqlite/SQLiteDoneException;
    const/4 v14, 0x0

    goto :goto_0

    .line 167
    .end local v13    # "missing":Landroid/database/sqlite/SQLiteDoneException;
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 170
    .restart local v11    # "agpsEnabled":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 262
    .local v0, "args":Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 264
    iget-object v3, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/gsf/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 265
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 266
    .local v1, "count":I
    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 268
    :cond_0
    return v1
.end method
