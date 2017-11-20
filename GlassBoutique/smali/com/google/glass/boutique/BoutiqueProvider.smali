.class public Lcom/google/glass/boutique/BoutiqueProvider;
.super Landroid/content/ContentProvider;
.source "BoutiqueProvider.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private dbHelper:Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

.field private suppressUpdates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/BoutiqueProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private logWithException(Ljava/lang/String;Landroid/database/SQLException;)Landroid/database/SQLException;
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "exception"    # Landroid/database/SQLException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p2, :cond_0

    new-instance v0, Landroid/database/SQLException;

    invoke-direct {v0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "exceptionToThrow":Landroid/database/SQLException;
    :goto_0
    sget-object v1, Lcom/google/glass/boutique/BoutiqueProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, p1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    return-object v0

    .end local v0    # "exceptionToThrow":Landroid/database/SQLException;
    :cond_0
    move-object v0, p2

    .line 163
    goto :goto_0
.end method

.method private lookupPrimaryKeyIdByGlasswareId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/Long;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "glasswareId"    # J

    .prologue
    const/4 v9, 0x0

    .line 131
    const/4 v8, 0x0

    .line 133
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "glassware"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "glassware_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 136
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 133
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 138
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 144
    if-eqz v8, :cond_0

    .line 145
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    if-eqz v8, :cond_2

    .line 145
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 145
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-boolean v0, p0, Lcom/google/glass/boutique/BoutiqueProvider;->suppressUpdates:Z

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    if-nez p1, :cond_1

    .line 155
    sget-object p1, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    .line 157
    :cond_1
    sget-object v0, Lcom/google/glass/boutique/BoutiqueProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Notifying change for URI: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/glass/boutique/BoutiqueProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/boutique/BoutiqueProvider;->suppressUpdates:Z

    .line 90
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 91
    .local v0, "numInserted":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/boutique/BoutiqueProvider;->suppressUpdates:Z

    .line 92
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/glass/boutique/BoutiqueProvider;->notifyChange(Landroid/net/Uri;)V

    .line 93
    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, "rowsDeleted":I
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/boutique/BoutiqueProvider;->dbHelper:Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "glassware"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 105
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-lez v2, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/BoutiqueProvider;->notifyChange(Landroid/net/Uri;)V

    .line 108
    :cond_0
    return v2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Landroid/database/SQLException;
    sget-object v3, Lcom/google/glass/boutique/BoutiqueProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Exception deleting item in Boutique glassware table."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 55
    const-string v8, "glassware_id"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 56
    .local v2, "glasswareId":Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 57
    const-string v8, "ContentValues missing glassware ID"

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/google/glass/boutique/BoutiqueProvider;->logWithException(Ljava/lang/String;Landroid/database/SQLException;)Landroid/database/SQLException;

    move-result-object v8

    throw v8

    .line 60
    :cond_0
    const-wide/16 v5, -0x1

    .line 62
    .local v5, "rowId":J
    :try_start_0
    iget-object v8, p0, Lcom/google/glass/boutique/BoutiqueProvider;->dbHelper:Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    invoke-virtual {v8}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 63
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v0, v8, v9}, Lcom/google/glass/boutique/BoutiqueProvider;->lookupPrimaryKeyIdByGlasswareId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/Long;

    move-result-object v4

    .line 64
    .local v4, "primaryKeyId":Ljava/lang/Long;
    if-nez v4, :cond_2

    .line 65
    const-string v8, "glassware"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 78
    :cond_1
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_3

    .line 79
    sget-object v8, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 80
    .local v7, "rowUri":Landroid/net/Uri;
    invoke-direct {p0, v7}, Lcom/google/glass/boutique/BoutiqueProvider;->notifyChange(Landroid/net/Uri;)V

    .line 81
    return-object v7

    .line 67
    .end local v7    # "rowUri":Landroid/net/Uri;
    :cond_2
    :try_start_1
    const-string v8, "glassware"

    const-string v9, "glassware_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 69
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 67
    invoke-virtual {v0, v8, p2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 70
    .local v3, "numInserted":I
    if-lez v3, :cond_1

    .line 71
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v5

    goto :goto_0

    .line 74
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "numInserted":I
    .end local v4    # "primaryKeyId":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Landroid/database/SQLException;
    const-string v8, "Exception inserting into Boutique glassware table."

    invoke-direct {p0, v8, v1}, Lcom/google/glass/boutique/BoutiqueProvider;->logWithException(Ljava/lang/String;Landroid/database/SQLException;)Landroid/database/SQLException;

    move-result-object v8

    throw v8

    .line 83
    .end local v1    # "e":Landroid/database/SQLException;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "primaryKeyId":Ljava/lang/Long;
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1a

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Row not inserted for URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/google/glass/boutique/BoutiqueProvider;->logWithException(Ljava/lang/String;Landroid/database/SQLException;)Landroid/database/SQLException;

    move-result-object v8

    throw v8
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    invoke-virtual {p0}, Lcom/google/glass/boutique/BoutiqueProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/boutique/BoutiqueProvider;->dbHelper:Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/boutique/BoutiqueProvider;->dbHelper:Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 39
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 40
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "glassware"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 41
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 43
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/google/glass/boutique/BoutiqueProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    return-object v8

    .line 47
    .end local v0    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 48
    .local v9, "e":Landroid/database/SQLException;
    const-string v2, "Exception querying from Boutique glassware DB"

    invoke-direct {p0, v2, v9}, Lcom/google/glass/boutique/BoutiqueProvider;->logWithException(Ljava/lang/String;Landroid/database/SQLException;)Landroid/database/SQLException;

    move-result-object v2

    throw v2
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/boutique/BoutiqueProvider;->dbHelper:Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->close()V

    .line 179
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    const-string v3, "Cannot update all items with null selection."

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/glass/boutique/BoutiqueProvider;->logWithException(Ljava/lang/String;Landroid/database/SQLException;)Landroid/database/SQLException;

    move-result-object v3

    throw v3

    .line 117
    :cond_0
    const/4 v2, 0x0

    .line 119
    .local v2, "rowsUpdated":I
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/boutique/BoutiqueProvider;->dbHelper:Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "glassware"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 124
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-lez v2, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lcom/google/glass/boutique/BoutiqueProvider;->notifyChange(Landroid/net/Uri;)V

    .line 127
    :cond_1
    return v2

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/database/SQLException;
    sget-object v3, Lcom/google/glass/boutique/BoutiqueProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Exception updating item in Boutique glassware table."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
