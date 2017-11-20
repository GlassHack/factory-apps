.class public Lcom/google/glass/boutique/UninstalledGlasswareTracker;
.super Ljava/lang/Object;
.source "UninstalledGlasswareTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;,
        Lcom/google/glass/boutique/UninstalledGlasswareTracker$Column;
    }
.end annotation


# static fields
.field private static final DATABASE_FILENAME:Ljava/lang/String; = "package_manager_service.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final ERROR_SQLITE_FAILURE:J = -0x1L

.field private static final TABLE_UNINSTALLED_GLASSWARE:Ljava/lang/String; = "uninstalled_glassware"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final databaseHelper:Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;-><init>(Lcom/google/glass/boutique/UninstalledGlasswareTracker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->databaseHelper:Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;

    .line 62
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public getAllGlassware()Lcom/google/common/collect/ImmutableList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 100
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v11

    .line 101
    .local v11, "uninstalledGlasswares":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;>;"
    const/4 v1, 0x0

    .line 102
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 104
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 105
    .local v0, "query":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "uninstalled_glassware"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->databaseHelper:Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 109
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 110
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    new-instance v10, Landroid/content/ContentValues;

    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-direct {v10, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 114
    .local v10, "row":Landroid/content/ContentValues;
    invoke-static {v9, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 116
    new-instance v8, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-direct {v8}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;-><init>()V

    .line 117
    .local v8, "apkMetadata":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    const-string v2, "package_name"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->setPackageName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 118
    const-string v2, "package_version"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->setVersionNumber(I)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 119
    invoke-virtual {v11, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 120
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    .end local v8    # "apkMetadata":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .end local v10    # "row":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 124
    if-eqz v9, :cond_0

    .line 125
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v2

    .line 123
    :cond_2
    if-eqz v1, :cond_4

    .line 124
    if-eqz v9, :cond_3

    .line 125
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 131
    :cond_4
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method public getGlassware(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 135
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 137
    const/4 v11, 0x0

    .line 138
    .local v11, "uninstalledGlassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    const/4 v1, 0x0

    .line 139
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 141
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 142
    .local v0, "query":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "uninstalled_glassware"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 144
    new-instance v10, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v10}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 145
    .local v10, "selection":Lcom/google/glass/util/SelectionBuilder;
    const-string v2, "package_name=?"

    invoke-virtual {v10, v2, p1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->databaseHelper:Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 149
    const/4 v2, 0x0

    .line 150
    invoke-virtual {v10}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 149
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 151
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v2, v13, :cond_2

    .line 152
    sget-object v2, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Query did not return exactly 1 row [packageName=%s, rowCount=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 154
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 152
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v1, :cond_1

    .line 167
    if-eqz v8, :cond_0

    .line 168
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 174
    :cond_1
    :goto_0
    return-object v12

    .line 158
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 159
    new-instance v9, Landroid/content/ContentValues;

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 160
    .local v9, "row":Landroid/content/ContentValues;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 162
    new-instance v12, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    invoke-direct {v12}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v11    # "uninstalledGlassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .local v12, "uninstalledGlassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    :try_start_2
    const-string v2, "package_name"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->setPackageName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    .line 164
    const-string v2, "package_version"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->setVersionNumber(I)Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    if-eqz v1, :cond_4

    .line 167
    if-eqz v8, :cond_3

    .line 168
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    move-object v11, v12

    .line 174
    .end local v12    # "uninstalledGlassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .restart local v11    # "uninstalledGlassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    goto :goto_0

    .line 166
    .end local v9    # "row":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v1, :cond_6

    .line 167
    if-eqz v8, :cond_5

    .line 168
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v2

    .line 166
    .end local v11    # "uninstalledGlassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .restart local v9    # "row":Landroid/content/ContentValues;
    .restart local v12    # "uninstalledGlassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    :catchall_1
    move-exception v2

    move-object v11, v12

    .end local v12    # "uninstalledGlassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    .restart local v11    # "uninstalledGlassware":Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;
    goto :goto_1
.end method

.method public recordGlassware(Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;)Z
    .locals 10
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 67
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "package_name"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v6, "package_version"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getVersionNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->databaseHelper:Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 75
    const-string v6, "uninstalled_glassware"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 77
    .local v1, "rowId":J
    const-wide/16 v6, -0x1

    cmp-long v6, v1, v6

    if-nez v6, :cond_1

    .line 78
    sget-object v5, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error recording uninstalled glassware.  Unable to insert into table. [packageName=%s, packageVersion=%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 82
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/BoutiqueNano$ApkMetadata;->getVersionNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 78
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 94
    :cond_0
    :goto_0
    return v4

    .line 86
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    move v4, v5

    .line 94
    goto :goto_0

    .line 88
    .end local v1    # "rowId":J
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v4
.end method

.method public removeGlassware(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 178
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, -0x1

    .line 182
    .local v1, "rowsDeleted":I
    new-instance v2, Lcom/google/glass/util/SelectionBuilder;

    invoke-direct {v2}, Lcom/google/glass/util/SelectionBuilder;-><init>()V

    .line 183
    .local v2, "selection":Lcom/google/glass/util/SelectionBuilder;
    const-string v5, "package_name=?"

    invoke-virtual {v2, v5, p1}, Lcom/google/glass/util/SelectionBuilder;->addSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/util/SelectionBuilder;

    .line 186
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->databaseHelper:Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;

    invoke-virtual {v5}, Lcom/google/glass/boutique/UninstalledGlasswareTracker$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 189
    const-string v5, "uninstalled_glassware"

    .line 190
    invoke-virtual {v2}, Lcom/google/glass/util/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/glass/util/SelectionBuilder;->getArguments()[Ljava/lang/String;

    move-result-object v7

    .line 189
    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 199
    :cond_0
    if-ne v1, v3, :cond_2

    .line 200
    sget-object v5, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Successfully removed record for glassware from uninstall preference database  [packageName=%s]."

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :goto_0
    return v3

    .line 193
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v3

    .line 204
    :cond_2
    if-nez v1, :cond_3

    .line 205
    sget-object v5, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "No record for glassware to remove from uninstall preference database [packageName=%s]."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v5, v6, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v3, v4

    .line 214
    goto :goto_0

    .line 209
    :cond_3
    sget-object v5, Lcom/google/glass/boutique/UninstalledGlasswareTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Multiple rows deleted from uninstall preference database.  Expected 0 or 1. [packageName=%s]."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v5, v6, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
