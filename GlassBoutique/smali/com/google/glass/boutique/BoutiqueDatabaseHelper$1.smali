.class Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;
.super Ljava/lang/Object;
.source "BoutiqueDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/BoutiqueDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->this$0:Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private migrate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 122
    invoke-static {}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Starting migration of data."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v5, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    if-nez v5, :cond_1

    .line 124
    invoke-static {}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Glassware table migration query returned null cursor."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v2, 0x0

    .line 129
    .local v2, "index":I
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v0, v5, [Landroid/content/ContentValues;

    .line 130
    .local v0, "allContentValues":[Landroid/content/ContentValues;
    :goto_1
    iget-object v5, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    array-length v5, v0

    if-ge v2, v5, :cond_4

    .line 131
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "glassware_id"

    iget-object v6, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    const-string v8, "glassware_id"

    .line 133
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 132
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v5, "is_enabled"

    iget-object v6, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    const-string v8, "is_enabled"

    .line 135
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 134
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v5, "mirror_project_id"

    iget-object v6, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    const-string v8, "mirror_project_id"

    .line 137
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 136
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 138
    const-string v5, "apk_package_name"

    iget-object v6, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    const-string v8, "apk_package_name"

    .line 139
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v5, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    const-string v6, "protobuf_blob"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 144
    .local v3, "protobufBlobColumnIndex":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 145
    const-string v5, "protobuf_blob"

    iget-object v6, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 148
    :cond_3
    aput-object v4, v0, v2

    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 150
    goto/16 :goto_1

    .line 153
    .end local v3    # "protobufBlobColumnIndex":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_4
    iget-object v5, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->this$0:Lcom/google/glass/boutique/BoutiqueDatabaseHelper;

    invoke-static {v5}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->access$100(Lcom/google/glass/boutique/BoutiqueDatabaseHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/google/glass/boutique/BoutiqueContract;->URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 154
    invoke-static {}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Completed migration of data."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v5, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    .line 159
    iget-object v5, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 155
    .end local v0    # "allContentValues":[Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Failed to migrate existing Glassware records."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    iget-object v5, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    .line 159
    iget-object v5, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    if-eqz v6, :cond_5

    .line 159
    iget-object v6, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->migrate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS temp_glassware"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/boutique/BoutiqueDatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS temp_glassware"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v0
.end method
