.class Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;
.super Ljava/lang/Object;
.source "EntityProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private migrate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 177
    invoke-static {}, Lcom/google/glass/entity/EntityProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Starting migration of data."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    if-nez v4, :cond_1

    .line 179
    invoke-static {}, Lcom/google/glass/entity/EntityProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Entity table migration query returned null cursor."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const/4 v2, 0x0

    .line 184
    .local v2, "index":I
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v0, v4, [Landroid/content/ContentValues;

    .line 185
    .local v0, "allContentValues":[Landroid/content/ContentValues;
    :goto_1
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 186
    :cond_2
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-static {v4}, Lcom/google/glass/entity/EntityUtils;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 190
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-static {v4, v1}, Lcom/google/glass/entity/EntityProvider;->migrateUsageColumnsToEntity(Landroid/database/Cursor;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 192
    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/ContentValues;

    move-result-object v3

    .line 193
    .local v3, "values":Landroid/content/ContentValues;
    aput-object v3, v0, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    .line 195
    goto :goto_1

    .line 198
    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->this$0:Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    invoke-static {v4}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->access$100(Lcom/google/glass/entity/EntityProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/glass/entity/EntityProviderConstants;->URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 199
    invoke-static {}, Lcom/google/glass/entity/EntityProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Completed migration of data."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 202
    iget-object v4, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 201
    .end local v0    # "allContentValues":[Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    .line 202
    iget-object v5, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->migrate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v0, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS temp_entity"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    return-void

    .line 172
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS temp_entity"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    throw v0
.end method
