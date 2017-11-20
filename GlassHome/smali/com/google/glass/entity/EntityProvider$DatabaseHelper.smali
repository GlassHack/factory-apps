.class Lcom/google/glass/entity/EntityProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EntityProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "entity.db"

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 65
    iput-object p1, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->context:Landroid/content/Context;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/entity/EntityProvider$DatabaseHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/entity/EntityProvider$DatabaseHelper;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method private createMetadataTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 122
    invoke-static {}, Lcom/google/glass/entity/EntityProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Creating entity provider\'s metadata table."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    const-string v0, "CREATE TABLE IF NOT EXISTS sync_metadata (_id INTEGER PRIMARY KEY AUTOINCREMENT,metadata_key STRING,metadata_value STRING);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 75
    const-string v0, "CREATE TABLE entity (_id TEXT,source TEXT,is_share_target INTEGER DEFAULT 0,is_communication_target INTEGER DEFAULT 0,can_hangout INTEGER DEFAULT 0,share_priority INTEGER,share_count INTEGER DEFAULT 0,share_time INTEGER DEFAULT 0,phone_number TEXT,secondary_phone_numbers TEXT,email TEXT,display_name TEXT COLLATE NOCASE,image_url TEXT,type INTEGER DEFAULT NULL,obfuscated_gaia_id TEXT DEFAULT NULL,is_in_my_contacts INTEGER DEFAULT 0,messaging_persona_source TEXT,messaging_persona_source_ids TEXT,recent_action_type TEXT DEFAULT NULL,protobuf_blob BLOB,PRIMARY KEY (_id,source));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->createMetadataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    const-string v0, "CREATE INDEX ix_entity_source ON entity(source);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v0, "CREATE INDEX ix_entity_is_share_target ON entity(is_share_target);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    const-string v0, "CREATE INDEX ix_entity_can_hangout ON entity(can_hangout);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "CREATE INDEX ix_entity_is_communication_target ON entity(is_communication_target);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "CREATE INDEX ix_entity_phone_number ON entity(phone_number);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "CREATE INDEX ix_entity_email ON entity(email);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 212
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 213
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-static {}, Lcom/google/glass/entity/EntityProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Upgrading database from version %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 135
    const-string v9, "temp_entity"

    .line 136
    .local v9, "tempEntityTable":Ljava/lang/String;
    const-string v0, "DROP TABLE IF EXISTS temp_entity"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    const-string v0, "ALTER TABLE entity RENAME TO temp_entity;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    const-string v0, "DROP TABLE IF EXISTS entity"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    const-string v0, "DROP INDEX IF EXISTS ix_entity_source"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v0, "DROP INDEX IF EXISTS ix_entity_is_share_target"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    const-string v0, "DROP INDEX IF EXISTS ix_entity_is_communication_target"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    const-string v0, "DROP INDEX IF EXISTS ix_entity_can_hangout"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v0, "DROP INDEX IF EXISTS ix_entity_phone_number"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string v0, "DROP INDEX IF EXISTS ix_entity_email"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    const-string v0, "DROP INDEX IF EXISTS ix_entity_should_sync"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 156
    const-string v1, "temp_entity"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 157
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 161
    invoke-static {}, Lcom/google/glass/entity/EntityProvider;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Migration query returned %d results."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 166
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;

    invoke-direct {v1, p0, p1, v8}, Lcom/google/glass/entity/EntityProvider$DatabaseHelper$1;-><init>(Lcom/google/glass/entity/EntityProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method
